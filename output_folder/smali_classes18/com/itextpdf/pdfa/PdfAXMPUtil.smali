.class public Lcom/itextpdf/pdfa/PdfAXMPUtil;
.super Ljava/lang/Object;
.source "PdfAXMPUtil.java"


# static fields
.field public static final PDF_UA_EXTENSION:Ljava/lang/String; = "    <x:xmpmeta xmlns:x=\"adobe:ns:meta/\">\n      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">\n        <rdf:Description rdf:about=\"\" xmlns:pdfaExtension=\"http://www.aiim.org/pdfa/ns/extension/\" xmlns:pdfaSchema=\"http://www.aiim.org/pdfa/ns/schema#\" xmlns:pdfaProperty=\"http://www.aiim.org/pdfa/ns/property#\">\n          <pdfaExtension:schemas>\n            <rdf:Bag>\n              <rdf:li rdf:parseType=\"Resource\">\n                <pdfaSchema:namespaceURI>http://www.aiim.org/pdfua/ns/id/</pdfaSchema:namespaceURI>\n                <pdfaSchema:prefix>pdfuaid</pdfaSchema:prefix>\n                <pdfaSchema:schema>PDF/UA identification schema</pdfaSchema:schema>\n                <pdfaSchema:property>\n                  <rdf:Seq>\n                    <rdf:li rdf:parseType=\"Resource\">\n                      <pdfaProperty:category>internal</pdfaProperty:category>\n                      <pdfaProperty:description>PDF/UA version identifier</pdfaProperty:description>\n                      <pdfaProperty:name>part</pdfaProperty:name>\n                      <pdfaProperty:valueType>Integer</pdfaProperty:valueType>\n                    </rdf:li>\n                    <rdf:li rdf:parseType=\"Resource\">\n                      <pdfaProperty:category>internal</pdfaProperty:category>\n                      <pdfaProperty:description>PDF/UA amendment identifier</pdfaProperty:description>\n                      <pdfaProperty:name>amd</pdfaProperty:name>\n                      <pdfaProperty:valueType>Text</pdfaProperty:valueType>\n                    </rdf:li>\n                    <rdf:li rdf:parseType=\"Resource\">\n                      <pdfaProperty:category>internal</pdfaProperty:category>\n                      <pdfaProperty:description>PDF/UA corrigenda identifier</pdfaProperty:description>\n                      <pdfaProperty:name>corr</pdfaProperty:name>\n                      <pdfaProperty:valueType>Text</pdfaProperty:valueType>\n                    </rdf:li>\n                  </rdf:Seq>\n                </pdfaSchema:property>\n              </rdf:li>\n            </rdf:Bag>\n          </pdfaExtension:schemas>\n        </rdf:Description>\n      </rdf:RDF>\n    </x:xmpmeta>"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
