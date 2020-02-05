package com.flamesweb.businesslogic;

public class Flames {
	
		// TODO Auto-generated method stu
	
		
	/**
	 * get names 
	 */
public	static int gettingNames(String boyname,String girlname){
					
		char bname[]=boyname.toLowerCase().toCharArray();
		char gname[]=girlname.toLowerCase().toCharArray();
		
		int bgnamelength=bname.length+gname.length;
		
		/**
		 * LOGIC FOR REMOVE SAME LETTER IN BOTH NAME
		 */
		for(int i=0;i<bname.length;i++){
			for(int j=0;j<gname.length;j++){
				if(bname[i]==gname[j]){
					bname[i]=0;
					gname[j]=0;
				}
			}
		}
		
		/**
		 * MERGING ARRAY
		 */
		char bg[]=new char[bgnamelength];
		for(int i=0;i<bname.length;i++){
			bg[i]=bname[i];
		}
		int k=0;
		for(int i=bname.length;i<bg.length;i++){
			bg[i]=gname[k];
			k++;
		}

		int count=0;
		for(int i=0;i<bg.length;i++){
			//System.out.print(bg[i]+"");
			if(bg[i]!=0){
			count++;
			//System.out.print(names[i]);
			}
		}
		
		//System.out.println("The count is : "+count);
		return count;
	}
	
	/**
	 * LOGIC TO GET A LETTER OF FLAEMS AFTER REMOVING
	 */
	public static char getflamesletters(int count){
		char flameletter='P';
		char flames[]={'F','L','A','M','E','S'};
		int iteration=0;
		int k=0;
		for(int i=0;i<flames.length;i++){
			if(flames[i]!=0){
				iteration++;	
			}
			if(iteration==count){
				k++;
				flames[i]=0;
				iteration=0;
				if(k==5){
					break;
				}
			}
			if(i==flames.length-1){
				i=-1;
			}
		}
		
		for(int i=0;i<flames.length;i++){
			if(flames[i]!=0){
				flameletter=flames[i];
			}
		}
		return flameletter;
	}
	
}
