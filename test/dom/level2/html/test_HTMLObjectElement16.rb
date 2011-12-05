
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
#     The vspace attribute specifies the vertical space above or below this    
#     image, applet or object.
#     Retrieve the vspace attribute of the first OBJECT element and examine
#     it's value.  
# @author NIST
# @author Mary Brady
# see[http://www.w3.org/TR/DOM-Level-2-HTML/html#ID-8682483]
##
DOMTestCase('HTMLObjectElement16') do

  ###
  # Constructor.
  # @param factory document factory, may not be null
  # @throws org.w3c.domts.DOMTestIncompatibleException Thrown if test is not compatible with parser configuration
  ##
  def setup
    ##
    ##   check if loaded documents are supported for content type
    ##
    contentType = getContentType()
    preload(contentType, "object", false)
  end

  ###
  # Runs the test case.
  # @throws Throwable Any uncaught exception causes test to fail
  #
  def test_HTMLObjectElement16
    nodeList = nil
    testNode = nil
    vvspace = nil
    doc = nil
    doc = load_document("object", false)
      nodeList = doc.getElementsByTagName("object")
      assertSize("Asize", 2, nodeList)
      testNode = nodeList.item(0)
      vvspace = testNode.vspace()
      assert_equal(0, vvspace, "vspaceLink")
            
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/HTMLObjectElement16"
  end
end

