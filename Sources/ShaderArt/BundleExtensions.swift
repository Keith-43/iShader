/*
 BundleExtensions.swift
 iShader

 Created by Treata Norouzi on 4/30/24.
*/

import SwiftUI

public extension Bundle {
    static let shaderArt: Bundle = .module
}

/// The **ShaderArt** Metal shader library.
@dynamicMemberLookup
public enum ShaderArtLibrary {
    /**
     Returns a new shader function representing the `[[ stitchable ]]` **MSL**
     function called `name` in the Inferno shader library.
     
     Typically this subscript is used implicitly via the dynamic
     member syntax, for example:
     ```swift
        let fn = ShaderArtLibrary.myFunction
     ```
     which creates a reference to the `[[ stitchable ]]` **MSL** function called
     `myFunction()`.
     */
    public static subscript(dynamicMember name: String) -> ShaderFunction {
        ShaderLibrary.bundle(.shaderArt)[dynamicMember: name]
    }
}
