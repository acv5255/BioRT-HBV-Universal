#include "biort.h"

void ReadCini(
    const char dir[], 
    int nsub, 
    const chemtbl_struct *chemtbl, 
    rttbl_struct *rttbl, 
    kintbl_struct kintbl[],
    subcatch_struct subcatch[])
{
    char            fn[MAXSTRING];
    char            cmdstr[MAXSTRING];
    FILE           *fp;
    int             lno = 0;
    double          dummy[MAXSPS];

    sprintf(fn, "input/%s/cini.txt", dir);
    fp = fopen(fn, "r");

    // Read precipitation concentration
    FindLine(fp, "PRECIPITATION", &lno, cmdstr);
    ReadConc(fp, rttbl->num_stc, chemtbl, &lno, subcatch[0].prcp_conc, dummy, dummy, dummy, dummy, dummy, kintbl, rttbl);

    // Read upper zone concentration
    FindLine(fp, "UZ", &lno, cmdstr);
    ReadConc(fp, rttbl->num_stc, chemtbl, &lno, subcatch[0].chms[UZ].tot_conc, subcatch[0].chms[UZ].ssa, subcatch[0].chms[UZ].q10, subcatch[0].chms[UZ].sw_thld, subcatch[0].chms[UZ].sw_exp, subcatch[0].chms[UZ].n_alpha, kintbl, rttbl);

    // Read lower zone concentration
    FindLine(fp, "LZ", &lno, cmdstr);
    ReadConc(fp, rttbl->num_stc, chemtbl, &lno, subcatch[0].chms[LZ].tot_conc, subcatch[0].chms[LZ].ssa, subcatch[0].chms[LZ].q10, subcatch[0].chms[LZ].sw_thld, subcatch[0].chms[LZ].sw_exp, subcatch[0].chms[LZ].n_alpha, kintbl, rttbl);

    fclose(fp);
}

void ReadConc(
    FILE *fp, 
    int num_stc, 
    const chemtbl_struct chemtbl[], 
    int *lno, 
    double tot_conc[], 
    double ssa[], 
    double q10[], 
    double sw_thld[], 
    double sw_exp[], 
    double n_alpha[],
    kintbl_struct kintbl[],
    rttbl_struct* rttbl
    )
{
    char            cmdstr[MAXSTRING];
    char            temp_str[MAXSTRING];
    int             ind;
    int             convert;
    double          dummy_val;

    for (int kspc = 0; kspc < num_stc; kspc++)
    {
        NextLine(fp, cmdstr, lno);

        // Read the species name
        sscanf(cmdstr, "%s", temp_str);
        if (strcmp("pH", temp_str) == 0)
        {
            convert = 1;
        }

        ind = FindChem(temp_str, num_stc, chemtbl);
        printf("Reading species %s\n", chemtbl[ind].name);
        if (ind < 0)
        {
            biort_printf(VL_ERROR, "Error finding chemical %s.\n", temp_str);
            exit(EXIT_FAILURE);
        }

        if (chemtbl[ind].itype == MINERAL)
        {
            double rate_val;
            // need to find the kinetic entry that corresponds to this rate
            int kinetic_ind = -1;
            for (int i = 0; i < MAXSPS; i++) {
                if (kintbl[i].position == ind) {
                    kinetic_ind = i;
                }
            }

            if (kinetic_ind < 0) {
                printf("Failed to find index of species in kinetic species vector\n");
                exit(-1);
            }

            if (sscanf(cmdstr, "%*s %lf %*s %lf %*s %lf %*s %lf %*s %lf %*s %lf %*s %lf", 
                    &tot_conc[ind], &ssa[ind], &q10[ind], &sw_thld[ind], &sw_exp[ind], &n_alpha[ind], &rate_val) != 7)
            {
                biort_printf(VL_ERROR, "Error reading initial condition in %s at Line %d.\n", "cini.txt", *lno);
                exit(EXIT_FAILURE);
            }
            kintbl[kinetic_ind].rate = rate_val;
            // printf("Successfully read mineral %s\n", chemtbl[ind].name);
        }
        else
        {
            if (sscanf(cmdstr, "%*s %lf", &tot_conc[ind]) != 1)
            {
                biort_printf(VL_ERROR, "Error reading initial condition in %s at Line %d.\n", "cini.txt", *lno);
            }
        }

        tot_conc[ind] = (strcmp(chemtbl[ind].name, "pH") == 0 && convert == 1) ?
            pow(10, -tot_conc[ind]) : tot_conc[ind];
    }
}
