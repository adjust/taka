
###
# This Ruby source file was generated by test-to-ruby.xsl
# and is a derived work from the source document.
# The source document contained the following notice:
=begin


Copyright (c) 2001 World Wide Web Consortium, 
(Massachusetts Institute of Technology, Institut National de
Recherche en Informatique et en Automatique, Keio University).  All 
Rights Reserved.  This program is distributed under the W3C's Software
Intellectual Property License.  This program is distributed in the 
hope that it will be useful, but WITHOUT ANY WARRANTY; without even
the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR 
PURPOSE.  

See W3C License http://www.w3.org/Consortium/Legal/ for more details.


=end
#

require File.expand_path(File.join(File.dirname(__FILE__), '..', '..', '..', 'helper'))

###
#     The createDocument method with valid arguments, should create a DOM Document of 
#     the specified type.  
#     
#     Call the createDocument on this DOMImplementation with 
#     createDocument ("http://www.w3.org/DOMTest/L2",see the array below for valid QNames,null).  
#     Check if the returned Document object is is empty with no Document Element. 
# @author IBM
# @author Neil Delima
# see[http://www.w3.org/TR/DOM-Level-2-Core/core#Level-2-Core-DOM-createDocument]
##
DOMTestCase('domimplementationcreatedocument03') do

  ###
  # Constructor.
  # @param factory document factory, may not be null
  # @throws org.w3c.domts.DOMTestIncompatibleException Thrown if test is not compatible with parser configuration
  ##
  def setup
=begin
      org.w3c.domts.DocumentBuilderSetting[] settings = 
          new org.w3c.domts.DocumentBuilderSetting[] {
org.w3c.domts.DocumentBuilderSetting.namespaceAware
        };
        DOMTestDocumentBuilderFactory testFactory = factory.newInstance(settings)
        setFactory(testFactory)
=end

    ##
    ##   check if loaded documents are supported for content type
    ##
    contentType = getContentType()
    preload(contentType, "staffNS", false)
  end

  ###
  # Runs the test case.
  # @throws Throwable Any uncaught exception causes test to fail
  #
  def test_domimplementationcreatedocument03
    doc = nil
    domImpl = nil
    newDoc = nil
    docType = nil;

    namespaceURI = "http://www.w3.org/DOMTest/L2";
    qualifiedName = nil
    qualifiedNames = []
      qualifiedNames << "_:_"
      qualifiedNames << "_:h0"
      qualifiedNames << "_:test"
      qualifiedNames << "l_:_"
      qualifiedNames << "ns:_0"
      qualifiedNames << "ns:a0"
      qualifiedNames << "ns0:test"
      qualifiedNames << "a.b:c"
      qualifiedNames << "a-b:c"
      qualifiedNames << "a-b:c"
      
    doc = load_document("staffNS", false)
      domImpl = doc.getImplementation()
      indexid2372131 = 0
    while (indexid2372131 < qualifiedNames.size())
      qualifiedName = qualifiedNames.get(indexid2372131)
    
      assert_not_nil(newDoc, "domimplementationcreatedocument03")
      indexid2372131 += 1
            end
      
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/domimplementationcreatedocument03"
  end
end

