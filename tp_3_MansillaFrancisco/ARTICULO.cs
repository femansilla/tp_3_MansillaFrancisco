//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace tp_3_MansillaFrancisco
{
    using System;
    using System.Collections.Generic;
    
    public partial class ARTICULO
    {
        public int ID_ART { get; set; }
        public int ID_MARCA { get; set; }
        public int ID_TIPO { get; set; }
        public string NOMBRE { get; set; }
        public Nullable<double> PRECIO_ART { get; set; }
        public string URL_IMAGEN { get; set; }
    
        public virtual MARCA MARCA { get; set; }
        public virtual TIPO TIPO { get; set; }
    }
}
