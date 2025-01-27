.class public Lcom/sleepycat/persist/model/ModelInternal;
.super Ljava/lang/Object;
.source "ModelInternal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClassLoader(Lcom/sleepycat/persist/model/EntityModel;)Ljava/lang/ClassLoader;
    .locals 1
    .param p0, "model"    # Lcom/sleepycat/persist/model/EntityModel;

    .line 58
    invoke-virtual {p0}, Lcom/sleepycat/persist/model/EntityModel;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public static setCatalog(Lcom/sleepycat/persist/model/EntityModel;Lcom/sleepycat/persist/impl/PersistCatalog;)V
    .locals 0
    .param p0, "model"    # Lcom/sleepycat/persist/model/EntityModel;
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/PersistCatalog;

    .line 35
    invoke-virtual {p0, p1}, Lcom/sleepycat/persist/model/EntityModel;->setCatalog(Lcom/sleepycat/persist/impl/PersistCatalog;)V

    .line 36
    return-void
.end method

.method public static setClassLoader(Lcom/sleepycat/persist/model/EntityModel;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p0, "model"    # Lcom/sleepycat/persist/model/EntityModel;
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .line 46
    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p0, p1}, Lcom/sleepycat/persist/model/EntityModel;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 49
    :cond_0
    return-void
.end method
