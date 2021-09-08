var expect = chai.expect;

describe('codegen', () => {

    describe('Ifline', () => {
        it('should return false when not an #IF LINE', () => {
            expect(new IfLine().isIfLine("not a ifline", 5)).to.be.false;
        });

        let ifLine = new IfLine("#IF Yep", 22)

        it('Should have expected values when #IF LINE is encountered', () => {
            expect(ifLine.lineNo).to.equal(22);
            expect(ifLine.content).to.equal('Yep');
            expect(ifLine.count).to.equal(2);
            expect(ifLine.skip).to.be.true;
        });

        describe("getContent", () => {
            it('Should expected nothing ', () => {
                expect(ifLine.getContent('', 23)).to.equal('');
                expect(ifLine.content).to.equal('Yep');
                expect(ifLine.skip).to.be.false;
            });

            it('Should expect "Yep" in content', () => {
                expect(ifLine.getContent('xxx', 24)).to.equal('Yep');
            });

            it('Should be reset after success', () => {
                expect(ifLine.lineNo).to.equal(-1);
                expect(ifLine.content).to.equal('');
                expect(ifLine.count).to.equal(0);
            });
        });

        describe("getContent", () => {
        
            let ifLine = new IfLine("#IF[5] testing", 2);
    
            it('Should get nothing and Count of  ', () => {
                expect(ifLine.getContent('', 3)).to.equal('');
                expect(ifLine.getContent('', 4)).to.equal('');
                expect(ifLine.getContent('', 5)).to.equal('');
                expect(ifLine.count).to.equal(5);
                expect(ifLine.skip).to.be.false;
            });
            
            it('Should have Testing and expected nothing ', () => {
                expect(ifLine.content).to.equal('testing');
                expect(ifLine.getContent('', 8)).to.equal('');
                expect(ifLine.getContent('xxx', 9)).to.equal('');
            });
    
            it('Should be reset after fail', () => {
                expect(ifLine.lineNo).to.equal(-1);
                expect(ifLine.content).to.equal('');
                expect(ifLine.count).to.equal(0);
            });
    
        });

        describe("getContent", () => {
        
            let ifLine = new IfLine("#IF[4] testing", 2);
    
            it('Should restart when new IF LINE encountered ', () => {
                expect(ifLine.getContent('', 3)).to.equal('');
                expect(ifLine.getContent('', 4)).to.equal('');
                expect(ifLine.count).to.equal(4);
                expect(ifLine.getContent('#IF line', 5)).to.equal('');
                expect(ifLine.skip).to.be.true;
                expect(ifLine.count).to.equal(2);
            });
            
    
        });

    })





})