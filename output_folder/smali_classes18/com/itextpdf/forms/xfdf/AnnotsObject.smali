.class public Lcom/itextpdf/forms/xfdf/AnnotsObject;
.super Ljava/lang/Object;
.source "AnnotsObject.java"


# instance fields
.field private annotsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/forms/xfdf/AnnotObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/forms/xfdf/AnnotsObject;->annotsList:Ljava/util/List;

    .line 68
    return-void
.end method


# virtual methods
.method public addAnnot(Lcom/itextpdf/forms/xfdf/AnnotObject;)Lcom/itextpdf/forms/xfdf/AnnotsObject;
    .locals 1
    .param p1, "annot"    # Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 84
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/AnnotsObject;->annotsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    return-object p0
.end method

.method public getAnnotsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/forms/xfdf/AnnotObject;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/AnnotsObject;->annotsList:Ljava/util/List;

    return-object v0
.end method
