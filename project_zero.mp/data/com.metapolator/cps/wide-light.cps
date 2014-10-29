/* set up this masters parameters */
@dictionary {
    point > center {
        widthFactor: 1.3;
    }
    point > left, point > right {
        weightFactor: 0.2;
    }
}

/********************
 * compensate for each skeleton/weight setup *
 *                           *****************/

@namespace("glyph#dvI") {
    /* the bubble */
    @dictionary{
        penstroke:i(0) point > * {
            bubbleScale: .5;
        }
    }
    /* the s shape */
    @namespace(penstroke:i(2)) {
        @dictionary {
            point:i(2) center {
                xTranslate: 15;
                yTranslate: 0;
            }
            point:i(-3) center {
                xTranslate: 15;
                yTranslate: 0;
            }
            
            point:i(-2) center {
                xTranslate: 34;
                yTranslate: 0;
            }
            
            point:i(-1) center {
                xTranslate: -20;
                yTranslate: 20;
            }
        }
        point:i(2) right{
            outTension: 1;
        }
        point:i(-1) center {
            in: on + Polar 20 deg 344;
        }
    }
    /* the vertical connection */
    @namespace(penstroke:i(3)) {
        @dictionary {
            point:i(0) left {
                offset: Vector 0 3;
            }
        }
    }
}
