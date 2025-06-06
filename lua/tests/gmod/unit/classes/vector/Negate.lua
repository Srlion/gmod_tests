--- @type GLuaTest_TestGroup
return {
    groupName = "Vector:Negate",

    cases = {
        {
            name = "Exists on the Vector meta table",
            func = function()
                local meta = FindMetaTable( "Vector" )
                expect( meta.Negate ).to.beA( "function" )
            end
        },

        {
            name = "Returns the right value",
            func = function()
                local a = Vector( 1, 2, 3 )
                a:Negate()

                expect( a[1] ).to.equal( -1 )
                expect( a[2] ).to.equal( -2 )
                expect( a[3] ).to.equal( -3 )
            end
        },
    }
}
