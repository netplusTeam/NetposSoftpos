.class public final Lorg/apache/sshd/common/util/ReflectionUtils;
.super Ljava/lang/Object;
.source "ReflectionUtils.java"


# static fields
.field public static final FIELD_NAME_EXTRACTOR:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lorg/apache/sshd/common/util/ReflectionUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/ReflectionUtils$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/util/ReflectionUtils;->FIELD_NAME_EXTRACTOR:Ljava/util/function/Function;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getMatchingDeclaredFields(Ljava/lang/Class;Ljava/util/function/Predicate;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/function/Predicate<",
            "-",
            "Ljava/lang/reflect/Field;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .line 42
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "acceptor":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-Ljava/lang/reflect/Field;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/GenericUtils;->selectMatchingMembers(Ljava/util/function/Predicate;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getMatchingFields(Ljava/lang/Class;Ljava/util/function/Predicate;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/function/Predicate<",
            "-",
            "Ljava/lang/reflect/Field;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .line 38
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "acceptor":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-Ljava/lang/reflect/Field;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/GenericUtils;->selectMatchingMembers(Ljava/util/function/Predicate;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static isClassAvailable(Ljava/lang/ClassLoader;Ljava/lang/String;)Z
    .locals 2
    .param p0, "cl"    # Ljava/lang/ClassLoader;
    .param p1, "className"    # Ljava/lang/String;

    .line 47
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    const/4 v0, 0x1

    return v0

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    .local v0, "ignored":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return v1
.end method

.method static synthetic lambda$static$0(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 1
    .param p0, "f"    # Ljava/lang/reflect/Field;

    .line 31
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
