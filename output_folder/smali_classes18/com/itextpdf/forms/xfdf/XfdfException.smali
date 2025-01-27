.class public Lcom/itextpdf/forms/xfdf/XfdfException;
.super Ljava/lang/RuntimeException;
.source "XfdfException.java"


# static fields
.field public static final ATTRIBUTE_NAME_OR_VALUE_MISSING:Ljava/lang/String; = "Attribute name or value are missing"

.field public static final PAGE_IS_MISSING:Ljava/lang/String; = "Required Page attribute is missing."


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method
