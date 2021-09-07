var expect = chai.expect;

describe('codegen', () => {
    describe('Ifline', () => {
        it('should return false when not an if line', () => {
            expect( new IfLine().isIfLine("not a ifline",5)).to.be.false; 
            
        })

    })
})