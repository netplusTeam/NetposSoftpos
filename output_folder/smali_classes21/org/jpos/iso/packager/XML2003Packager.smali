.class public Lorg/jpos/iso/packager/XML2003Packager;
.super Lorg/jpos/iso/packager/XMLPackager;
.source "XML2003Packager.java"


# instance fields
.field private final BINARY_FIELDS:[I


# direct methods
.method public constructor <init>()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lorg/jpos/iso/packager/XMLPackager;-><init>()V

    .line 34
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x48

    const/4 v3, 0x0

    aput v2, v1, v3

    iput-object v1, p0, Lorg/jpos/iso/packager/XML2003Packager;->BINARY_FIELDS:[I

    .line 38
    invoke-virtual {p0, v1}, Lorg/jpos/iso/packager/XML2003Packager;->forceBinary([I)V

    .line 43
    :try_start_0
    const-string v1, "http://apache.org/xml/features/disallow-doctype-decl"

    invoke-virtual {p0, v1, v3}, Lorg/jpos/iso/packager/XML2003Packager;->setXMLParserFeature(Ljava/lang/String;Z)V

    .line 44
    const-string v1, "http://xml.org/sax/features/external-general-entities"

    invoke-virtual {p0, v1, v0}, Lorg/jpos/iso/packager/XML2003Packager;->setXMLParserFeature(Ljava/lang/String;Z)V

    .line 45
    const-string v1, "http://xml.org/sax/features/external-parameter-entities"

    invoke-virtual {p0, v1, v0}, Lorg/jpos/iso/packager/XML2003Packager;->setXMLParserFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    nop

    .line 49
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/jpos/iso/ISOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
