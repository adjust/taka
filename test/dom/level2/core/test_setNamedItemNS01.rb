
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
#     The "setNamedItemNS(arg)" method for a 
#    NamedNodeMap should raise INUSE_ATTRIBUTE_ERR DOMException if 
#    arg is an Attr that is already an attribute of another Element object.
#    
#    Retrieve an attr node from the third "address" element whose local name
#    is "domestic" and namespaceURI is "http://www.netzero.com".
#    Invoke method setNamedItemNS(arg) on the map of the first "address" element with
#    arg being the attr node from above.  Method should raise
#    INUSE_ATTRIBUTE_ERR DOMException.
# @author NIST
# @author Mary Brady
# see[http://www.w3.org/TR/DOM-Level-2-Core/core#xpointer(id('ID-258A00AF')/constant[@name='INUSE_ATTRIBUTE_ERR'])]
# see[http://www.w3.org/TR/DOM-Level-2-Core/core#ID-setNamedItemNS]
# see[http://www.w3.org/TR/DOM-Level-2-Core/core#xpointer(id('ID-setNamedItemNS')/raises/exception[@name='DOMException']/descr/p[substring-before(.,':')='INUSE_ATTRIBUTE_ERR'])]
##
DOMTestCase('setNamedItemNS01') do

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
    preload(contentType, "staffNS", true)
  end

  ###
  # Runs the test case.
  # @throws Throwable Any uncaught exception causes test to fail
  #
  def test_setNamedItemNS01
    doc = nil
    elementList = nil
    anotherElement = nil
    anotherMap = nil
    arg = nil
    testAddress = nil
    map = nil
    setNode = nil
    doc = load_document("staffNS", true)
      elementList = doc.getElementsByTagName("address")
      anotherElement = elementList.item(2)
      anotherMap = anotherElement.attributes()
      
      testAddress = elementList.item(0)
      map = testAddress.attributes()
      
    begin
      success = false;
      begin
        
      rescue Nokogiri::XML::DOMException => ex
        success = (ex.code == Nokogiri::XML::DOMException::INUSE_ATTRIBUTE_ERR)
      end 
      assert(success, "throw_INUSE_ATTRIBUTE_ERR")
    end

  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/setNamedItemNS01"
  end
end

