#include "Julia.h"
#include "Device.h"

/*----------------------------------------------------------------------*\
 |*			Declaration 					*|
 \*---------------------------------------------------------------------*/

/*--------------------------------------*\
 |*		Public			*|
 \*-------------------------------------*/

/*--------------------------------------*\
 |*		Private			*|
 \*-------------------------------------*/

/*----------------------------------------------------------------------*\
 |*			Implementation 					*|
 \*---------------------------------------------------------------------*/

extern __global__ void julia(uchar4* ptrDevPixels, uint w, uint h, uint t, DomaineMath domaineMath);

Julia::Julia(const Grid& grid, uint w, uint h, float dt, const DomaineMath& domaineMath) :
	Fractal(grid, w, h, dt, domaineMath)
    {

    }

Julia::~Julia(){}

void Julia::process(uchar4* ptrDevPixels, uint w, uint h, const DomaineMath& domaineMath) {
    julia<<<dg, db>>>(ptrDevPixels, w, h, this->t, domaineMath);
}

/*--------------------------------------*\
 |*		Public			*|
 \*-------------------------------------*/

/*--------------------------------------*\
 |*		Private			*|
 \*-------------------------------------*/

/*----------------------------------------------------------------------*\
 |*			End	 					*|
 \*---------------------------------------------------------------------*/

