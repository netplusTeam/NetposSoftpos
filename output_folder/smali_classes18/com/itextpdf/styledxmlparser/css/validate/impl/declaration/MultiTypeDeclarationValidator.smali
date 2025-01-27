.class public Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;
.super Ljava/lang/Object;
.source "MultiTypeDeclarationValidator.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/validate/ICssDeclarationValidator;


# instance fields
.field private allowedTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;)V
    .locals 1
    .param p1, "allowedTypes"    # [Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;->allowedTypes:Ljava/util/List;

    .line 68
    return-void
.end method


# virtual methods
.method public isValid(Lcom/itextpdf/styledxmlparser/css/CssDeclaration;)Z
    .locals 3
    .param p1, "cssDeclaration"    # Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    .line 75
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/validate/impl/declaration/MultiTypeDeclarationValidator;->allowedTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;

    .line 76
    .local v1, "dTypeValidator":Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->getExpression()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    const/4 v0, 0x1

    return v0

    .line 79
    .end local v1    # "dTypeValidator":Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;
    :cond_0
    goto :goto_0

    .line 80
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
