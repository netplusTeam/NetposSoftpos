.class public Lcom/itextpdf/styledxmlparser/css/media/MediaQuery;
.super Ljava/lang/Object;
.source "MediaQuery.java"


# instance fields
.field private expressions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;",
            ">;"
        }
    .end annotation
.end field

.field private not:Z

.field private only:Z

.field private type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;ZZ)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p3, "only"    # Z
    .param p4, "not"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;",
            ">;ZZ)V"
        }
    .end annotation

    .line 82
    .local p2, "expressions":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaQuery;->type:Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaQuery;->expressions:Ljava/util/List;

    .line 85
    iput-boolean p3, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaQuery;->only:Z

    .line 86
    iput-boolean p4, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaQuery;->not:Z

    .line 87
    return-void
.end method


# virtual methods
.method public matches(Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;)Z
    .locals 7
    .param p1, "deviceDescription"    # Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;

    .line 96
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaQuery;->type:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/itextpdf/styledxmlparser/css/media/MediaType;->ALL:Ljava/lang/String;

    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaQuery;->type:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaQuery;->type:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 98
    .local v0, "typeMatches":Z
    :goto_1
    const/4 v3, 0x1

    .line 99
    .local v3, "matchesExpressions":Z
    iget-object v4, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaQuery;->expressions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;

    .line 100
    .local v5, "expression":Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;
    invoke-virtual {v5, p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;->matches(Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 101
    const/4 v3, 0x0

    .line 102
    goto :goto_3

    .line 104
    .end local v5    # "expression":Lcom/itextpdf/styledxmlparser/css/media/MediaExpression;
    :cond_2
    goto :goto_2

    .line 106
    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    move v4, v2

    goto :goto_4

    :cond_4
    move v4, v1

    .line 107
    .local v4, "expressionResult":Z
    :goto_4
    iget-boolean v5, p0, Lcom/itextpdf/styledxmlparser/css/media/MediaQuery;->not:Z

    if-eqz v5, :cond_6

    .line 108
    if-nez v4, :cond_5

    move v1, v2

    :cond_5
    move v4, v1

    .line 111
    :cond_6
    return v4
.end method
