.class public Lcom/sleepycat/persist/impl/RefreshException;
.super Ljava/lang/Exception;
.source "RefreshException.java"


# instance fields
.field private final catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

.field private final formatId:I

.field private final store:Lcom/sleepycat/persist/impl/Store;


# direct methods
.method constructor <init>(Lcom/sleepycat/persist/impl/Store;Lcom/sleepycat/persist/impl/PersistCatalog;I)V
    .locals 0
    .param p1, "store"    # Lcom/sleepycat/persist/impl/Store;
    .param p2, "catalog"    # Lcom/sleepycat/persist/impl/PersistCatalog;
    .param p3, "formatId"    # I

    .line 120
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/sleepycat/persist/impl/RefreshException;->store:Lcom/sleepycat/persist/impl/Store;

    .line 122
    iput-object p2, p0, Lcom/sleepycat/persist/impl/RefreshException;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    .line 123
    iput p3, p0, Lcom/sleepycat/persist/impl/RefreshException;->formatId:I

    .line 124
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "formatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/persist/impl/RefreshException;->formatId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public refresh()Lcom/sleepycat/persist/impl/PersistCatalog;
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/sleepycat/persist/impl/RefreshException;->store:Lcom/sleepycat/persist/impl/Store;

    iget-object v1, p0, Lcom/sleepycat/persist/impl/RefreshException;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    iget v2, p0, Lcom/sleepycat/persist/impl/RefreshException;->formatId:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/sleepycat/persist/impl/Store;->refresh(Lcom/sleepycat/persist/impl/PersistCatalog;ILcom/sleepycat/persist/impl/RefreshException;)Lcom/sleepycat/persist/impl/PersistCatalog;

    move-result-object v0

    return-object v0
.end method
