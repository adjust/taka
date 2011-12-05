
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
# An object implementing the Event interface is created by using 
# DocumentEvent.createEvent method with eventType equals "UIEvents".
# Only applicable if implementation supports the "UIEvents" feature.
# @author Curt Arnold
# see[http://www.w3.org/TR/DOM-Level-2-Events/events#Events-DocumentEvent-createEvent]
##
DOMTestCase('createEvent03') do

  ###
  # Constructor.
  # @param factory document factory, may not be null
  # @throws org.w3c.domts.DOMTestIncompatibleException Thrown if test is not compatible with parser configuration
  ##
  def setup
        if (factory.hasFeature("UIEvents", "2.0") != true)
         raise 'org.w3c.domts.DOMTestIncompatibleException.incompatibleFeature("UIEvents", "2.0")'
      end

    ##
    ##   check if loaded documents are supported for content type
    ##
    contentType = getContentType()
    preload(contentType, "hc_staff", true)
  end

  ###
  # Runs the test case.
  # @throws Throwable Any uncaught exception causes test to fail
  #
  def test_createEvent03
    doc = nil
    event = nil
    doc = load_document("hc_staff", true)
      
      assert_not_nil(event, "notnull")
      
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/createEvent03"
  end
end

