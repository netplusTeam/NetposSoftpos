.class Ljavassist/util/proxy/SecurityActions$TheUnsafe;
.super Ljava/lang/Object;
.source "SecurityActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/util/proxy/SecurityActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TheUnsafe"
.end annotation


# instance fields
.field final methods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field final theUnsafe:Ljava/lang/Object;

.field final synthetic this$0:Ljavassist/util/proxy/SecurityActions;

.field final unsafe:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljavassist/util/proxy/SecurityActions;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 9
    .param p1, "this$0"    # Ljavassist/util/proxy/SecurityActions;
    .param p3, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 242
    .local p2, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Ljavassist/util/proxy/SecurityActions$TheUnsafe;->this$0:Ljavassist/util/proxy/SecurityActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljavassist/util/proxy/SecurityActions$TheUnsafe;->methods:Ljava/util/Map;

    .line 243
    iput-object p2, p0, Ljavassist/util/proxy/SecurityActions$TheUnsafe;->unsafe:Ljava/lang/Class;

    .line 244
    iput-object p3, p0, Ljavassist/util/proxy/SecurityActions$TheUnsafe;->theUnsafe:Ljava/lang/Object;

    .line 245
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 246
    .local v3, "m":Ljava/lang/reflect/Method;
    iget-object v4, p0, Ljavassist/util/proxy/SecurityActions$TheUnsafe;->methods:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 247
    iget-object v4, p0, Ljavassist/util/proxy/SecurityActions$TheUnsafe;->methods:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    goto :goto_1

    .line 250
    :cond_0
    iget-object v4, p0, Ljavassist/util/proxy/SecurityActions$TheUnsafe;->methods:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 251
    iget-object v4, p0, Ljavassist/util/proxy/SecurityActions$TheUnsafe;->methods:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Ljavassist/util/proxy/SecurityActions$TheUnsafe;->methods:Ljava/util/Map;

    .line 252
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 251
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :cond_1
    iget-object v4, p0, Ljavassist/util/proxy/SecurityActions$TheUnsafe;->methods:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    .end local v3    # "m":Ljava/lang/reflect/Method;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 255
    :cond_2
    return-void
.end method

.method private getM(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "o"    # [Ljava/lang/Object;

    .line 259
    iget-object v0, p0, Ljavassist/util/proxy/SecurityActions$TheUnsafe;->methods:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    return-object v0
.end method


# virtual methods
.method public varargs call(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 265
    :try_start_0
    invoke-direct {p0, p1, p2}, Ljavassist/util/proxy/SecurityActions$TheUnsafe;->getM(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Ljavassist/util/proxy/SecurityActions$TheUnsafe;->theUnsafe:Ljava/lang/Object;

    invoke-virtual {v0, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 266
    :catchall_0
    move-exception v0

    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 267
    .end local v0    # "t":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return-object v0
.end method
