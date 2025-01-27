.class public Lcom/itextpdf/forms/xfdf/AttributeObject;
.super Ljava/lang/Object;
.source "AttributeObject.java"


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 63
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/AttributeObject;->name:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/itextpdf/forms/xfdf/AttributeObject;->value:Ljava/lang/String;

    .line 65
    return-void

    .line 61
    :cond_0
    new-instance v0, Lcom/itextpdf/forms/xfdf/XfdfException;

    const-string v1, "Attribute name or value are missing"

    invoke-direct {v0, v1}, Lcom/itextpdf/forms/xfdf/XfdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/AttributeObject;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/AttributeObject;->value:Ljava/lang/String;

    return-object v0
.end method
