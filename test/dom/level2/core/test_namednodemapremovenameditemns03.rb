
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
#    The method removeNamedItemNS removes a node specified by local name and namespace 
#       
#  Create a new element node and add 2 new attribute nodes to it that have the same localName
#  but different namespaceURI's.  Remove the first attribute node from the namedNodeMap of the
#  new element node and check to see that the second attribute still exists.
# @author IBM
# @author Neil Delima
# see[http://www.w3.org/TR/DOM-Level-2-Core/core#ID-D58B193]
##
DOMTestCase('namednodemapremovenameditemns03') do

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
  def test_namednodemapremovenameditemns03
    doc = nil
    attributes = nil
    element = nil
    attribute = nil
    newAttribute = nil
    attribute1 = nil
    attribute2 = nil
    nodeName = nil
    doc = load_document("staffNS", true)
      
      
      
      
      
      attributes = element.attributes()
      
      
      nodeName = attribute.nodeName()
      assert_equal("L2:att", nodeName, "namednodemapremovenameditemns02")
            
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/namednodemapremovenameditemns03"
  end
end

