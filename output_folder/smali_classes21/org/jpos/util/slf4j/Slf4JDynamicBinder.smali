.class public Lorg/jpos/util/slf4j/Slf4JDynamicBinder;
.super Ljava/lang/Object;
.source "Slf4JDynamicBinder.java"


# static fields
.field private static final STATIC_BINDER_CLASS:Ljava/lang/String; = "org.slf4j.impl.StaticLoggerBinder"

.field private static final STATIC_BINDER_RESOURCE:Ljava/lang/String; = "org/slf4j/impl/StaticLoggerBinder.class"

.field private static bound:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lorg/jpos/util/slf4j/Slf4JDynamicBinder;->bound:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyMods()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    sget-boolean v0, Lorg/jpos/util/slf4j/Slf4JDynamicBinder;->bound:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/jpos/util/slf4j/Slf4JDynamicBinder;->bindingsExist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    const-class v0, Lorg/jpos/util/slf4j/Slf4JDynamicBinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v0

    .line 44
    .local v0, "pd":Ljava/security/ProtectionDomain;
    invoke-static {}, Ljavassist/ClassPool;->getDefault()Ljavassist/ClassPool;

    move-result-object v1

    .line 45
    .local v1, "cp":Ljavassist/ClassPool;
    const-class v2, Lorg/jpos/util/slf4j/StaticLoggerBinder;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "org.slf4j.impl.StaticLoggerBinder"

    invoke-virtual {v1, v2, v3}, Ljavassist/ClassPool;->getAndRename(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v2

    .line 47
    .local v2, "clz":Ljavassist/CtClass;
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljavassist/CtClass;->toClass(Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)Ljava/lang/Class;

    .line 49
    const-string v4, "org.slf4j.LoggerFactory"

    invoke-virtual {v1, v4}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v4

    .line 50
    .local v4, "clz2":Ljavassist/CtClass;
    const-string v5, "bind"

    invoke-virtual {v4, v5}, Ljavassist/CtClass;->getDeclaredMethod(Ljava/lang/String;)Ljavassist/CtMethod;

    move-result-object v5

    .line 52
    .local v5, "bindMethod":Ljavassist/CtMethod;
    const-string v6, "try { org.slf4j.impl.StaticLoggerBinder.getSingleton(); INITIALIZATION_STATE = SUCCESSFUL_INITIALIZATION; fixSubstituteLoggers(); replayEvents(); SUBST_FACTORY.clear();} catch(Exception e){ failedBinding(e);  throw new IllegalStateException(\"Unexpected initialization failure\", e);}"

    invoke-virtual {v5, v6}, Ljavassist/CtMethod;->setBody(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v4, v3, v0}, Ljavassist/CtClass;->toClass(Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)Ljava/lang/Class;

    .line 66
    invoke-virtual {v4}, Ljavassist/CtClass;->detach()V

    .line 67
    invoke-virtual {v2}, Ljavassist/CtClass;->detach()V

    .line 68
    const/4 v3, 0x1

    sput-boolean v3, Lorg/jpos/util/slf4j/Slf4JDynamicBinder;->bound:Z

    .line 70
    .end local v0    # "pd":Ljava/security/ProtectionDomain;
    .end local v1    # "cp":Ljavassist/ClassPool;
    .end local v2    # "clz":Ljavassist/CtClass;
    .end local v4    # "clz2":Ljavassist/CtClass;
    .end local v5    # "bindMethod":Ljavassist/CtMethod;
    :cond_0
    return-void
.end method

.method private static bindingsExist()Z
    .locals 4

    .line 74
    const/4 v0, 0x0

    .line 77
    .local v0, "cnt":I
    :try_start_0
    const-class v1, Lorg/jpos/util/slf4j/Slf4JDynamicBinder;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 78
    .local v1, "cl":Ljava/lang/ClassLoader;
    const-string v2, "org/slf4j/impl/StaticLoggerBinder.class"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2

    .line 79
    .local v2, "paths":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    .end local v2    # "paths":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    :cond_0
    goto :goto_1

    .line 85
    :catch_0
    move-exception v1

    .line 88
    :goto_1
    if-lez v0, :cond_1

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_2
    return v1
.end method
