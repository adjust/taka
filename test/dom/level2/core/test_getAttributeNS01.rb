
###
# This Ruby source file was generated by test-to-ruby.xsl
# and is a derived work from the source document.
# The source document contained the following notice:
=begin


Copyright (c) 2001-2003 World Wide Web Consortium, 
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
#     The "getAttributeNS(namespaceURI,localName)" method retrieves an
#    attribute value by local name and NamespaceURI.
#    
#    Retrieve the first "emp:address" element.
#    The value returned by the "getAttributeNS()" method should be the 
#    value "DISTRICT" since the attribute has a default value.
# @author NIST
# @author Mary Brady
# see[http://www.w3.org/TR/DOM-Level-2-Core/core#ID-ElGetAttrNS]
# see[http://www.w3.org/Bugs/Public/show_bug.cgi?id=238]
##
DOMTestCase('getAttributeNS01') do

  ###
  # Constructor.
  # @param factory document factory, may not be null
  # @throws org.w3c.domts.DOMTestIncompatibleException Thrown if test is not compatible with parser configuration
  ##
  def setup
=begin
      org.w3c.domts.DocumentBuilderSetting[] settings = 
          new org.w3c.domts.DocumentBuilderSetting[] {
org.w3c.domts.DocumentBuilderSetting.namespaceAware,
org.w3c.domts.DocumentBuilderSetting.validating
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
  def test_getAttributeNS01
    namespaceURI = "http://www.nist.gov";
    localName = "district";
    qualifiedName = "emp:district";
    doc = nil
    elementList = nil
    testAddr = nil
    attrValue = nil
    doc = load_document("staffNS", false)
      elementList = doc.getElementsByTagName("emp:address")
      testAddr = elementList.item(0)
      
      assert_equal("DISTRICT", attrValue, "attrValue")
            
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/getAttributeNS01"
  end
end

