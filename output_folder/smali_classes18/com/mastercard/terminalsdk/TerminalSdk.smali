.class public final Lcom/mastercard/terminalsdk/TerminalSdk;
.super Ljava/lang/Object;


# static fields
.field static b:Lcom/mastercard/terminalsdk/TerminalSdk;


# instance fields
.field final a:Lcom/mastercard/terminalsdk/ConfigurationInterface;

.field final c:Lcom/mastercard/terminalsdk/LibraryServicesInterface;


# direct methods
.method private constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2193

    const v1, 0xe0f7

    const/16 v2, 0x26

    :try_start_0
    invoke-static {v2, v0, v1}, Lcom/mastercard/terminalsdk/internal/q;->b(IIC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const-string v1, "a"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const v0, 0xbc28

    const/16 v1, 0x1c2b

    :try_start_1
    invoke-static {v2, v1, v0}, Lcom/mastercard/terminalsdk/internal/q;->b(IIC)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mastercard/terminalsdk/ConfigurationInterface;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iput-object v3, p0, Lcom/mastercard/terminalsdk/TerminalSdk;->a:Lcom/mastercard/terminalsdk/ConfigurationInterface;

    const/4 v4, 0x1

    :try_start_2
    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/16 v3, 0x1b93

    invoke-static {v2, v3, v6}, Lcom/mastercard/terminalsdk/internal/q;->b(IIC)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    new-array v4, v4, [Ljava/lang/Class;

    invoke-static {v2, v1, v0}, Lcom/mastercard/terminalsdk/internal/q;->b(IIC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    aput-object v0, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mastercard/terminalsdk/LibraryServicesInterface;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-object v0, p0, Lcom/mastercard/terminalsdk/TerminalSdk;->c:Lcom/mastercard/terminalsdk/LibraryServicesInterface;

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    throw v1

    :cond_0
    throw v0

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    throw v1

    :cond_1
    throw v0

    :catchall_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    throw v1

    :cond_2
    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/mastercard/terminalsdk/TerminalSdk;
    .locals 2

    const-class v0, Lcom/mastercard/terminalsdk/TerminalSdk;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mastercard/terminalsdk/TerminalSdk;->b:Lcom/mastercard/terminalsdk/TerminalSdk;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mastercard/terminalsdk/TerminalSdk;

    invoke-direct {v1}, Lcom/mastercard/terminalsdk/TerminalSdk;-><init>()V

    sput-object v1, Lcom/mastercard/terminalsdk/TerminalSdk;->b:Lcom/mastercard/terminalsdk/TerminalSdk;

    :cond_0
    sget-object v1, Lcom/mastercard/terminalsdk/TerminalSdk;->b:Lcom/mastercard/terminalsdk/TerminalSdk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final getConfiguration()Lcom/mastercard/terminalsdk/ConfigurationInterface;
    .locals 1

    iget-object v0, p0, Lcom/mastercard/terminalsdk/TerminalSdk;->a:Lcom/mastercard/terminalsdk/ConfigurationInterface;

    return-object v0
.end method

.method public final getLibraryServices()Lcom/mastercard/terminalsdk/LibraryServicesInterface;
    .locals 1

    iget-object v0, p0, Lcom/mastercard/terminalsdk/TerminalSdk;->c:Lcom/mastercard/terminalsdk/LibraryServicesInterface;

    return-object v0
.end method
