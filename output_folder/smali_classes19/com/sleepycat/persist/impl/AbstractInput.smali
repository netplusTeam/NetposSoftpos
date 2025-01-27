.class abstract Lcom/sleepycat/persist/impl/AbstractInput;
.super Ljava/lang/Object;
.source "AbstractInput.java"

# interfaces
.implements Lcom/sleepycat/persist/impl/EntityInput;


# instance fields
.field catalog:Lcom/sleepycat/persist/impl/Catalog;

.field rawAccess:Z


# direct methods
.method constructor <init>(Lcom/sleepycat/persist/impl/Catalog;Z)V
    .locals 0
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "rawAccess"    # Z

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/sleepycat/persist/impl/AbstractInput;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    .line 29
    iput-boolean p2, p0, Lcom/sleepycat/persist/impl/AbstractInput;->rawAccess:Z

    .line 30
    return-void
.end method


# virtual methods
.method public getCatalog()Lcom/sleepycat/persist/impl/Catalog;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/sleepycat/persist/impl/AbstractInput;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    return-object v0
.end method

.method public isRawAccess()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/sleepycat/persist/impl/AbstractInput;->rawAccess:Z

    return v0
.end method

.method public setRawAccess(Z)Z
    .locals 1
    .param p1, "rawAccessParam"    # Z

    .line 41
    iget-boolean v0, p0, Lcom/sleepycat/persist/impl/AbstractInput;->rawAccess:Z

    .line 42
    .local v0, "original":Z
    iput-boolean p1, p0, Lcom/sleepycat/persist/impl/AbstractInput;->rawAccess:Z

    .line 43
    return v0
.end method
