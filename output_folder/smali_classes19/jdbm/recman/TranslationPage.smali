.class final Ljdbm/recman/TranslationPage;
.super Ljdbm/recman/PageHeader;
.source "TranslationPage.java"


# static fields
.field static final ELEMS_PER_PAGE:S = 0x331s

.field static final O_TRANS:S = 0x12s


# instance fields
.field final slots:[Ljdbm/recman/PhysicalRowId;


# direct methods
.method constructor <init>(Ljdbm/recman/BlockIo;)V
    .locals 1
    .param p1, "block"    # Ljdbm/recman/BlockIo;

    .line 69
    invoke-direct {p0, p1}, Ljdbm/recman/PageHeader;-><init>(Ljdbm/recman/BlockIo;)V

    .line 63
    const/16 v0, 0x331

    new-array v0, v0, [Ljdbm/recman/PhysicalRowId;

    iput-object v0, p0, Ljdbm/recman/TranslationPage;->slots:[Ljdbm/recman/PhysicalRowId;

    .line 70
    return-void
.end method

.method static getTranslationPageView(Ljdbm/recman/BlockIo;)Ljdbm/recman/TranslationPage;
    .locals 2
    .param p0, "block"    # Ljdbm/recman/BlockIo;

    .line 77
    invoke-virtual {p0}, Ljdbm/recman/BlockIo;->getView()Ljdbm/recman/BlockView;

    move-result-object v0

    .line 78
    .local v0, "view":Ljdbm/recman/BlockView;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljdbm/recman/TranslationPage;

    if-eqz v1, :cond_0

    .line 79
    move-object v1, v0

    check-cast v1, Ljdbm/recman/TranslationPage;

    return-object v1

    .line 81
    :cond_0
    new-instance v1, Ljdbm/recman/TranslationPage;

    invoke-direct {v1, p0}, Ljdbm/recman/TranslationPage;-><init>(Ljdbm/recman/BlockIo;)V

    return-object v1
.end method


# virtual methods
.method get(S)Ljdbm/recman/PhysicalRowId;
    .locals 4
    .param p1, "offset"    # S

    .line 86
    add-int/lit8 v0, p1, -0x12

    div-int/lit8 v0, v0, 0xa

    .line 87
    .local v0, "slot":I
    iget-object v1, p0, Ljdbm/recman/TranslationPage;->slots:[Ljdbm/recman/PhysicalRowId;

    aget-object v2, v1, v0

    if-nez v2, :cond_0

    .line 88
    new-instance v2, Ljdbm/recman/PhysicalRowId;

    iget-object v3, p0, Ljdbm/recman/TranslationPage;->block:Ljdbm/recman/BlockIo;

    invoke-direct {v2, v3, p1}, Ljdbm/recman/PhysicalRowId;-><init>(Ljdbm/recman/BlockIo;S)V

    aput-object v2, v1, v0

    .line 89
    :cond_0
    iget-object v1, p0, Ljdbm/recman/TranslationPage;->slots:[Ljdbm/recman/PhysicalRowId;

    aget-object v1, v1, v0

    return-object v1
.end method
