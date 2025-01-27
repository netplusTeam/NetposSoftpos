.class public final Lcom/dsofttech/dprefs/utils/DPrefs;
.super Ljava/lang/Object;
.source "DPrefs.kt"

# interfaces
.implements Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\tH\u0002J\u0018\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u0007H\u0016J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000eH\u0016J\u001f\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0010H\u0016\u00a2\u0006\u0002\u0010\u0011J\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u0013H\u0016J\u0018\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u0015H\u0016J+\u0010\u0016\u001a\u0004\u0018\u0001H\u0017\"\u0004\u0008\u0000\u0010\u00172\u0006\u0010\u0008\u001a\u00020\t2\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u0002H\u00170\u0019H\u0016\u00a2\u0006\u0002\u0010\u001aJ\u0018\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\tH\u0016J\u000e\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u001eJ\u0008\u0010\u001f\u001a\u00020\u0005H\u0002J\u0018\u0010 \u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010!\u001a\u00020\u0007H\u0016J\u0018\u0010\"\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010!\u001a\u00020\u000eH\u0016J\u0018\u0010#\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010!\u001a\u00020\u0010H\u0016J\u0018\u0010$\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010!\u001a\u00020\u0013H\u0016J\u0018\u0010%\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010!\u001a\u00020\u0015H\u0016J#\u0010&\u001a\u00020\u0005\"\u0004\u0008\u0000\u0010\u00172\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010!\u001a\u0002H\u0017H\u0016\u00a2\u0006\u0002\u0010\'J\u0018\u0010(\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010!\u001a\u00020\tH\u0016J\u0010\u0010)\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\tH\u0016R\u000e\u0010\u0003\u001a\u00020\u0001X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006*"
    }
    d2 = {
        "Lcom/dsofttech/dprefs/utils/DPrefs;",
        "Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;",
        "()V",
        "dPrefs",
        "clearAllPrefs",
        "",
        "doesKeyExists",
        "",
        "key",
        "",
        "doesKeyNotExist",
        "getBoolean",
        "defaultValue",
        "getDouble",
        "",
        "getFloat",
        "",
        "(Ljava/lang/String;Ljava/lang/Float;)F",
        "getInt",
        "",
        "getLong",
        "",
        "getObject",
        "T",
        "type",
        "Ljava/lang/Class;",
        "(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;",
        "getString",
        "initializeDPrefs",
        "context",
        "Landroid/content/Context;",
        "isDPrefsInitialized",
        "putBoolean",
        "value",
        "putDouble",
        "putFloat",
        "putInt",
        "putLong",
        "putObject",
        "(Ljava/lang/String;Ljava/lang/Object;)V",
        "putString",
        "removePref",
        "DPrefs_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dsofttech/dprefs/utils/DPrefs;

.field private static dPrefs:Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dsofttech/dprefs/utils/DPrefs;

    invoke-direct {v0}, Lcom/dsofttech/dprefs/utils/DPrefs;-><init>()V

    sput-object v0, Lcom/dsofttech/dprefs/utils/DPrefs;->INSTANCE:Lcom/dsofttech/dprefs/utils/DPrefs;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final doesKeyNotExist(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 155
    sget-object v0, Lcom/dsofttech/dprefs/utils/DPrefs;->dPrefs:Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;

    if-nez v0, :cond_0

    const-string v0, "dPrefs"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0, p1}, Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;->doesKeyExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    return-void

    .line 156
    :cond_1
    new-instance v0, Lcom/dsofttech/dprefs/utils/exceptions/DPrefsKeyAlreadyExistsException;

    invoke-direct {v0}, Lcom/dsofttech/dprefs/utils/exceptions/DPrefsKeyAlreadyExistsException;-><init>()V

    throw v0
.end method

.method private final isDPrefsInitialized()V
    .locals 1

    .line 144
    sget-object v0, Lcom/dsofttech/dprefs/utils/DPrefs;->dPrefs:Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;

    if-eqz v0, :cond_0

    .line 147
    return-void

    .line 145
    :cond_0
    new-instance v0, Lcom/dsofttech/dprefs/utils/exceptions/DPrefsNotInitializedException;

    invoke-direct {v0}, Lcom/dsofttech/dprefs/utils/exceptions/DPrefsNotInitializedException;-><init>()V

    throw v0
.end method


# virtual methods
.method public clearAllPrefs()V
    .locals 1

    .line 132
    invoke-direct {p0}, Lcom/dsofttech/dprefs/utils/DPrefs;->isDPrefsInitialized()V

    .line 133
    sget-object v0, Lcom/dsofttech/dprefs/utils/DPrefs;->dPrefs:Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;

    if-nez v0, :cond_0

    const-string v0, "dPrefs"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0}, Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;->clearAllPrefs()V

    .line 134
    return-void
.end method

.method public doesKeyExists(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    sget-object v0, Lcom/dsofttech/dprefs/utils/DPrefs;->dPrefs:Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;

    if-nez v0, :cond_0

    const-string v0, "dPrefs"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0, p1}, Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;->doesKeyExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0}, Lcom/dsofttech/dprefs/utils/DPrefs;->isDPrefsInitialized()V

    .line 103
    sget-object v0, Lcom/dsofttech/dprefs/utils/DPrefs;->dPrefs:Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;

    if-nez v0, :cond_0

    const-string v0, "dPrefs"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-direct {p0}, Lcom/dsofttech/dprefs/utils/DPrefs;->isDPrefsInitialized()V

    .line 118
    sget-object v0, Lcom/dsofttech/dprefs/utils/DPrefs;->dPrefs:Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;

    if-nez v0, :cond_0

    const-string v0, "dPrefs"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(Ljava/lang/String;Ljava/lang/Float;)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Float;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Lcom/dsofttech/dprefs/utils/DPrefs;->isDPrefsInitialized()V

    .line 108
    sget-object v0, Lcom/dsofttech/dprefs/utils/DPrefs;->dPrefs:Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;

    if-nez v0, :cond_0

    const-string v0, "dPrefs"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;->getFloat(Ljava/lang/String;Ljava/lang/Float;)F

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-direct {p0}, Lcom/dsofttech/dprefs/utils/DPrefs;->isDPrefsInitialized()V

    .line 98
    sget-object v0, Lcom/dsofttech/dprefs/utils/DPrefs;->dPrefs:Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;

    if-nez v0, :cond_0

    const-string v0, "dPrefs"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-direct {p0}, Lcom/dsofttech/dprefs/utils/DPrefs;->isDPrefsInitialized()V

    .line 113
    sget-object v0, Lcom/dsofttech/dprefs/utils/DPrefs;->dPrefs:Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;

    if-nez v0, :cond_0

    const-string v0, "dPrefs"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-direct {p0}, Lcom/dsofttech/dprefs/utils/DPrefs;->isDPrefsInitialized()V

    .line 123
    sget-object v0, Lcom/dsofttech/dprefs/utils/DPrefs;->dPrefs:Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;

    if-nez v0, :cond_0

    const-string v0, "dPrefs"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0}, Lcom/dsofttech/dprefs/utils/DPrefs;->isDPrefsInitialized()V

    .line 93
    sget-object v0, Lcom/dsofttech/dprefs/utils/DPrefs;->dPrefs:Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;

    if-nez v0, :cond_0

    const-string v0, "dPrefs"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final initializeDPrefs(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v0, Lcom/dsofttech/dprefs/domanin/DPrefsManager;

    invoke-direct {v0, p1}, Lcom/dsofttech/dprefs/domanin/DPrefsManager;-><init>(Landroid/content/Context;)V

    check-cast v0, Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;

    sput-object v0, Lcom/dsofttech/dprefs/utils/DPrefs;->dPrefs:Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;

    .line 47
    return-void
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Lcom/dsofttech/dprefs/utils/DPrefs;->isDPrefsInitialized()V

    .line 64
    sget-object v0, Lcom/dsofttech/dprefs/utils/DPrefs;->dPrefs:Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;

    if-nez v0, :cond_0

    const-string v0, "dPrefs"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;->putBoolean(Ljava/lang/String;Z)V

    .line 65
    return-void
.end method

.method public putDouble(Ljava/lang/String;D)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Lcom/dsofttech/dprefs/utils/DPrefs;->isDPrefsInitialized()V

    .line 82
    sget-object v0, Lcom/dsofttech/dprefs/utils/DPrefs;->dPrefs:Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;

    if-nez v0, :cond_0

    const-string v0, "dPrefs"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;->putDouble(Ljava/lang/String;D)V

    .line 83
    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Lcom/dsofttech/dprefs/utils/DPrefs;->isDPrefsInitialized()V

    .line 70
    sget-object v0, Lcom/dsofttech/dprefs/utils/DPrefs;->dPrefs:Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;

    if-nez v0, :cond_0

    const-string v0, "dPrefs"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;->putFloat(Ljava/lang/String;F)V

    .line 71
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Lcom/dsofttech/dprefs/utils/DPrefs;->isDPrefsInitialized()V

    .line 58
    sget-object v0, Lcom/dsofttech/dprefs/utils/DPrefs;->dPrefs:Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;

    if-nez v0, :cond_0

    const-string v0, "dPrefs"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;->putInt(Ljava/lang/String;I)V

    .line 59
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0}, Lcom/dsofttech/dprefs/utils/DPrefs;->isDPrefsInitialized()V

    .line 76
    sget-object v0, Lcom/dsofttech/dprefs/utils/DPrefs;->dPrefs:Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;

    if-nez v0, :cond_0

    const-string v0, "dPrefs"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;->putLong(Ljava/lang/String;J)V

    .line 77
    return-void
.end method

.method public putObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0}, Lcom/dsofttech/dprefs/utils/DPrefs;->isDPrefsInitialized()V

    .line 88
    sget-object v0, Lcom/dsofttech/dprefs/utils/DPrefs;->dPrefs:Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;

    if-nez v0, :cond_0

    const-string v0, "dPrefs"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Lcom/dsofttech/dprefs/utils/DPrefs;->isDPrefsInitialized()V

    .line 52
    sget-object v0, Lcom/dsofttech/dprefs/utils/DPrefs;->dPrefs:Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;

    if-nez v0, :cond_0

    const-string v0, "dPrefs"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public removePref(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-direct {p0}, Lcom/dsofttech/dprefs/utils/DPrefs;->isDPrefsInitialized()V

    .line 128
    sget-object v0, Lcom/dsofttech/dprefs/utils/DPrefs;->dPrefs:Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;

    if-nez v0, :cond_0

    const-string v0, "dPrefs"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0, p1}, Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;->removePref(Ljava/lang/String;)V

    .line 129
    return-void
.end method
