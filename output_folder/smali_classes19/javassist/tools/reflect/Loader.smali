.class public Ljavassist/tools/reflect/Loader;
.super Ljavassist/Loader;
.source "Loader.java"


# instance fields
.field protected reflection:Ljavassist/tools/reflect/Reflection;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 131
    invoke-direct {p0}, Ljavassist/Loader;-><init>()V

    .line 132
    const-string v0, "javassist.tools.reflect.Loader"

    invoke-virtual {p0, v0}, Ljavassist/tools/reflect/Loader;->delegateLoadingOf(Ljava/lang/String;)V

    .line 134
    new-instance v0, Ljavassist/tools/reflect/Reflection;

    invoke-direct {v0}, Ljavassist/tools/reflect/Reflection;-><init>()V

    iput-object v0, p0, Ljavassist/tools/reflect/Loader;->reflection:Ljavassist/tools/reflect/Reflection;

    .line 135
    invoke-static {}, Ljavassist/ClassPool;->getDefault()Ljavassist/ClassPool;

    move-result-object v0

    .line 136
    .local v0, "pool":Ljavassist/ClassPool;
    iget-object v1, p0, Ljavassist/tools/reflect/Loader;->reflection:Ljavassist/tools/reflect/Reflection;

    invoke-virtual {p0, v0, v1}, Ljavassist/tools/reflect/Loader;->addTranslator(Ljavassist/ClassPool;Ljavassist/Translator;)V

    .line 137
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 123
    new-instance v0, Ljavassist/tools/reflect/Loader;

    invoke-direct {v0}, Ljavassist/tools/reflect/Loader;-><init>()V

    .line 124
    .local v0, "cl":Ljavassist/tools/reflect/Loader;
    invoke-virtual {v0, p0}, Ljavassist/tools/reflect/Loader;->run([Ljava/lang/String;)V

    .line 125
    return-void
.end method


# virtual methods
.method public makeReflective(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "clazz"    # Ljava/lang/String;
    .param p2, "metaobject"    # Ljava/lang/String;
    .param p3, "metaclass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Ljavassist/tools/reflect/Loader;->reflection:Ljavassist/tools/reflect/Reflection;

    invoke-virtual {v0, p1, p2, p3}, Ljavassist/tools/reflect/Reflection;->makeReflective(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
