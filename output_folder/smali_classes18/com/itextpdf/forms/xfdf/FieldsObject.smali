.class public Lcom/itextpdf/forms/xfdf/FieldsObject;
.super Ljava/lang/Object;
.source "FieldsObject.java"


# instance fields
.field private fieldList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/forms/xfdf/FieldObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/forms/xfdf/FieldsObject;->fieldList:Ljava/util/List;

    .line 63
    return-void
.end method


# virtual methods
.method public addField(Lcom/itextpdf/forms/xfdf/FieldObject;)Lcom/itextpdf/forms/xfdf/FieldsObject;
    .locals 1
    .param p1, "field"    # Lcom/itextpdf/forms/xfdf/FieldObject;

    .line 80
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/FieldsObject;->fieldList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    return-object p0
.end method

.method public getFieldList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/forms/xfdf/FieldObject;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/FieldsObject;->fieldList:Ljava/util/List;

    return-object v0
.end method
