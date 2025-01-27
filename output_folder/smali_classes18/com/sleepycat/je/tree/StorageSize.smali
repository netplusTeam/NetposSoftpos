.class public Lcom/sleepycat/je/tree/StorageSize;
.super Ljava/lang/Object;
.source "StorageSize.java"


# static fields
.field private static final LN_OVERHEAD:I = 0x32

.field private static final PRI_EMBEDDED_LN_SLOT_OVERHEAD:I = 0x14

.field private static final PRI_SLOT_OVERHEAD:I = 0xe

.field private static final SEC_SLOT_OVERHEAD:I = 0xc


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStorageSize(Lcom/sleepycat/je/tree/BIN;I)I
    .locals 3
    .param p0, "bin"    # Lcom/sleepycat/je/tree/BIN;
    .param p1, "idx"    # I

    .line 160
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/BIN;->getStoredKeySize(I)I

    move-result v0

    .line 174
    .local v0, "storedKeySize":I
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/BIN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    add-int/lit8 v1, v0, -0x1

    add-int/lit8 v1, v1, 0xc

    return v1

    .line 190
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/BIN;->isEmbeddedLN(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    add-int/lit8 v1, v0, -0x1

    add-int/lit8 v1, v1, 0x14

    return v1

    .line 205
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/BIN;->getLastLoggedSize(I)I

    move-result v1

    .line 206
    .local v1, "lastLoggedSize":I
    if-nez v1, :cond_2

    .line 208
    const/4 v2, 0x0

    return v2

    .line 210
    :cond_2
    add-int v2, v1, v0

    add-int/lit8 v2, v2, 0xe

    return v2
.end method
