package com;

/**
 * Created by Aditya on 15/11/2014.
 */
public class Pickof {

    /*Calculating times with String vs String builder, built as a test to understand performance differential
    * between Java and python*/

  
        public boolean anagramSolution(String A1,String A2)
        {

            StringBuilder S1=new StringBuilder(A1);
            StringBuilder S2=new StringBuilder(A2);
            int pos1=0;
            boolean StillOk=true;
            boolean found=false;
            while(pos1<S1.length() && StillOk )
            {
                int pos2=0;
                while(pos2<S2.length() && !found)
                {
                    if(S1.charAt(pos1)==S2.charAt(pos2))
                    {
                        found=true;
                    }
                    else
                    {
                        pos2++;
                    }
                }
                if(found)
                {
                    S2.setCharAt(pos2,'\0');
                }
                else
                {
                    StillOk=false;
                }
                pos1++;


            }

            return StillOk;
        }

}
