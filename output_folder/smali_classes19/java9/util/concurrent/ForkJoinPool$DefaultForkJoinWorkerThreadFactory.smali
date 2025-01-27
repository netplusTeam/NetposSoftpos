.class final Ljava9/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;
.super Ljava/lang/Object;
.source "ForkJoinPool.java"

# interfaces
.implements Ljava9/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/concurrent/ForkJoinPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultForkJoinWorkerThreadFactory"
.end annotation


# static fields
.field private static final ACC:Ljava/security/AccessControlContext;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 650
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/security/Permission;

    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "getClassLoader"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava9/util/concurrent/ForkJoinPool;->contextWithPermissions([Ljava/security/Permission;)Ljava/security/AccessControlContext;

    move-result-object v0

    sput-object v0, Ljava9/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;->ACC:Ljava/security/AccessControlContext;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava9/util/concurrent/ForkJoinPool$1;)V
    .locals 0
    .param p1, "x0"    # Ljava9/util/concurrent/ForkJoinPool$1;

    .line 648
    invoke-direct {p0}, Ljava9/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava9/util/concurrent/ForkJoinPool;)Ljava9/util/concurrent/ForkJoinWorkerThread;
    .locals 2
    .param p1, "pool"    # Ljava9/util/concurrent/ForkJoinPool;

    .line 655
    new-instance v0, Ljava9/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory$1;

    invoke-direct {v0, p0, p1}, Ljava9/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory$1;-><init>(Ljava9/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;Ljava9/util/concurrent/ForkJoinPool;)V

    sget-object v1, Ljava9/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;->ACC:Ljava/security/AccessControlContext;

    invoke-static {v0, v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava9/util/concurrent/ForkJoinWorkerThread;

    return-object v0
.end method
