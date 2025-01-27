.class public Lcom/itextpdf/styledxmlparser/jsoup/nodes/BooleanAttribute;
.super Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;
.source "BooleanAttribute.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 54
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method


# virtual methods
.method protected isBooleanAttribute()Z
    .locals 1

    .line 59
    const/4 v0, 0x1

    return v0
.end method
