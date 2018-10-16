#include<libtransistor/nx.h>

#include "tvmr.h"

#include<stdio.h>

int main() {
	svcSleepThread(100000000);

	printf("Creating Device\n");
    TVMRDevice *pDevice = TVMRDeviceCreate(NULL);
	
    printf("Creating Surface\n");
	TVMRVideoSurface *pVideoSurface = TVMRVideoSurfaceCreate(pDevice, TVMRSurfaceType_YV12, 1280, 720, NV_TRUE);
	
    printf("Destroying Surface\n");
	TVMRVideoSurfaceDestroy(pVideoSurface);
    
	printf("Destroying Devicd\n");
	TVMRDeviceDestroy(pDevice);

	printf("Bye\n");
	return 0x55;
}