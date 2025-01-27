.class public Lcom/itextpdf/forms/xfdf/FObject;
.super Ljava/lang/Object;
.source "FObject.java"


# instance fields
.field private href:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "href"    # Ljava/lang/String;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/FObject;->href:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public getHref()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/FObject;->href:Ljava/lang/String;

    return-object v0
.end method

.method public setHref(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/FObject;
    .locals 0
    .param p1, "href"    # Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/FObject;->href:Ljava/lang/String;

    .line 81
    return-object p0
.end method
