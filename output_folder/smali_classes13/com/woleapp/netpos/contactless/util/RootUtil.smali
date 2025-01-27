.class public final Lcom/woleapp/netpos/contactless/util/RootUtil;
.super Ljava/lang/Object;
.source "RootUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002J\u0008\u0010\u0007\u001a\u00020\u0004H\u0002J\u0008\u0010\u0008\u001a\u00020\u0004H\u0002R\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0005\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/util/RootUtil;",
        "",
        "()V",
        "isDeviceRooted",
        "",
        "()Z",
        "checkRootMethod1",
        "checkRootMethod2",
        "checkRootMethod3",
        "app_fcmbeasypayDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/woleapp/netpos/contactless/util/RootUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/woleapp/netpos/contactless/util/RootUtil;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/util/RootUtil;-><init>()V

    sput-object v0, Lcom/woleapp/netpos/contactless/util/RootUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RootUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final checkRootMethod1()Z
    .locals 6

    .line 13
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 14
    .local v0, "buildTags":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const-string v3, "test-keys"

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v3, v1, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private final checkRootMethod2()Z
    .locals 10

    .line 19
    nop

    .line 20
    nop

    .line 19
    nop

    .line 21
    nop

    .line 19
    nop

    .line 22
    nop

    .line 19
    nop

    .line 23
    nop

    .line 19
    nop

    .line 24
    nop

    .line 19
    nop

    .line 25
    nop

    .line 19
    nop

    .line 26
    nop

    .line 19
    nop

    .line 27
    nop

    .line 19
    nop

    .line 28
    const-string v0, "/system/app/Superuser.apk"

    const-string v1, "/sbin/su"

    const-string v2, "/system/bin/su"

    const-string v3, "/system/xbin/su"

    const-string v4, "/data/local/xbin/su"

    const-string v5, "/data/local/bin/su"

    const-string v6, "/system/sd/xbin/su"

    const-string v7, "/system/bin/failsafe/su"

    const-string v8, "/data/local/su"

    const-string v9, "/su/bin/su"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    .line 19
    nop

    .line 18
    nop

    .line 30
    .local v0, "paths":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 31
    .local v4, "path":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    return v1

    .line 30
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 33
    .end local v4    # "path":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method private final checkRootMethod3()Z
    .locals 5

    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, "process":Ljava/lang/Process;
    nop

    .line 39
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "/system/xbin/which"

    const-string v4, "su"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    move-object v0, v2

    .line 40
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    check-cast v3, Ljava/io/Reader;

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 41
    .local v2, "in":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 45
    .end local v2    # "in":Ljava/io/BufferedReader;
    :cond_0
    if-eqz v0, :cond_1

    goto :goto_0

    .line 42
    :catchall_0
    move-exception v2

    .line 43
    .local v2, "t":Ljava/lang/Throwable;
    nop

    .line 45
    .end local v2    # "t":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 46
    :cond_1
    nop

    .line 38
    return v1
.end method


# virtual methods
.method public final isDeviceRooted()Z
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/util/RootUtil;->checkRootMethod1()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/util/RootUtil;->checkRootMethod2()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/util/RootUtil;->checkRootMethod3()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
