.class public Lorg/yaml/snakeyaml/constructor/Constructor;
.super Lorg/yaml/snakeyaml/constructor/SafeConstructor;
.source "Constructor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/yaml/snakeyaml/constructor/Constructor$ConstructSequence;,
        Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;,
        Lorg/yaml/snakeyaml/constructor/Constructor$ConstructYamlObject;,
        Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/constructor/Constructor;-><init>(Ljava/lang/Class;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 61
    .local p1, "theRoot":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    new-instance v0, Lorg/yaml/snakeyaml/TypeDescription;

    invoke-static {p1}, Lorg/yaml/snakeyaml/constructor/Constructor;->checkRoot(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/TypeDescription;-><init>(Ljava/lang/Class;)V

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/constructor/Constructor;-><init>(Lorg/yaml/snakeyaml/TypeDescription;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lorg/yaml/snakeyaml/LoaderOptions;)V
    .locals 2
    .param p2, "loadingConfig"    # Lorg/yaml/snakeyaml/LoaderOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/yaml/snakeyaml/LoaderOptions;",
            ")V"
        }
    .end annotation

    .line 65
    .local p1, "theRoot":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    new-instance v0, Lorg/yaml/snakeyaml/TypeDescription;

    invoke-static {p1}, Lorg/yaml/snakeyaml/constructor/Constructor;->checkRoot(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/TypeDescription;-><init>(Ljava/lang/Class;)V

    invoke-direct {p0, v0, p2}, Lorg/yaml/snakeyaml/constructor/Constructor;-><init>(Lorg/yaml/snakeyaml/TypeDescription;Lorg/yaml/snakeyaml/LoaderOptions;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "theRoot"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 120
    invoke-static {p1}, Lorg/yaml/snakeyaml/constructor/Constructor;->check(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/constructor/Constructor;-><init>(Ljava/lang/Class;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/yaml/snakeyaml/LoaderOptions;)V
    .locals 1
    .param p1, "theRoot"    # Ljava/lang/String;
    .param p2, "loadingConfig"    # Lorg/yaml/snakeyaml/LoaderOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 124
    invoke-static {p1}, Lorg/yaml/snakeyaml/constructor/Constructor;->check(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/yaml/snakeyaml/constructor/Constructor;-><init>(Ljava/lang/Class;Lorg/yaml/snakeyaml/LoaderOptions;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/LoaderOptions;)V
    .locals 1
    .param p1, "loadingConfig"    # Lorg/yaml/snakeyaml/LoaderOptions;

    .line 51
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lorg/yaml/snakeyaml/constructor/Constructor;-><init>(Ljava/lang/Class;Lorg/yaml/snakeyaml/LoaderOptions;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/TypeDescription;)V
    .locals 2
    .param p1, "theRoot"    # Lorg/yaml/snakeyaml/TypeDescription;

    .line 79
    new-instance v0, Lorg/yaml/snakeyaml/LoaderOptions;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/LoaderOptions;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/yaml/snakeyaml/constructor/Constructor;-><init>(Lorg/yaml/snakeyaml/TypeDescription;Ljava/util/Collection;Lorg/yaml/snakeyaml/LoaderOptions;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/TypeDescription;Ljava/util/Collection;)V
    .locals 1
    .param p1, "theRoot"    # Lorg/yaml/snakeyaml/TypeDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/yaml/snakeyaml/TypeDescription;",
            "Ljava/util/Collection<",
            "Lorg/yaml/snakeyaml/TypeDescription;",
            ">;)V"
        }
    .end annotation

    .line 87
    .local p2, "moreTDs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/yaml/snakeyaml/TypeDescription;>;"
    new-instance v0, Lorg/yaml/snakeyaml/LoaderOptions;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/LoaderOptions;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/yaml/snakeyaml/constructor/Constructor;-><init>(Lorg/yaml/snakeyaml/TypeDescription;Ljava/util/Collection;Lorg/yaml/snakeyaml/LoaderOptions;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/TypeDescription;Ljava/util/Collection;Lorg/yaml/snakeyaml/LoaderOptions;)V
    .locals 3
    .param p1, "theRoot"    # Lorg/yaml/snakeyaml/TypeDescription;
    .param p3, "loadingConfig"    # Lorg/yaml/snakeyaml/LoaderOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/yaml/snakeyaml/TypeDescription;",
            "Ljava/util/Collection<",
            "Lorg/yaml/snakeyaml/TypeDescription;",
            ">;",
            "Lorg/yaml/snakeyaml/LoaderOptions;",
            ")V"
        }
    .end annotation

    .line 91
    .local p2, "moreTDs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/yaml/snakeyaml/TypeDescription;>;"
    invoke-direct {p0, p3}, Lorg/yaml/snakeyaml/constructor/SafeConstructor;-><init>(Lorg/yaml/snakeyaml/LoaderOptions;)V

    .line 92
    if-eqz p1, :cond_2

    .line 95
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor;->yamlConstructors:Ljava/util/Map;

    const/4 v1, 0x0

    new-instance v2, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructYamlObject;

    invoke-direct {v2, p0}, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructYamlObject;-><init>(Lorg/yaml/snakeyaml/constructor/Constructor;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/TypeDescription;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/TypeDescription;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/nodes/Tag;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor;->rootTag:Lorg/yaml/snakeyaml/nodes/Tag;

    .line 99
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor;->yamlClassConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/NodeId;->scalar:Lorg/yaml/snakeyaml/nodes/NodeId;

    new-instance v2, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;

    invoke-direct {v2, p0}, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;-><init>(Lorg/yaml/snakeyaml/constructor/Constructor;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor;->yamlClassConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/NodeId;->mapping:Lorg/yaml/snakeyaml/nodes/NodeId;

    new-instance v2, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;

    invoke-direct {v2, p0}, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;-><init>(Lorg/yaml/snakeyaml/constructor/Constructor;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor;->yamlClassConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/NodeId;->sequence:Lorg/yaml/snakeyaml/nodes/NodeId;

    new-instance v2, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructSequence;

    invoke-direct {v2, p0}, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructSequence;-><init>(Lorg/yaml/snakeyaml/constructor/Constructor;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-virtual {p0, p1}, Lorg/yaml/snakeyaml/constructor/Constructor;->addTypeDescription(Lorg/yaml/snakeyaml/TypeDescription;)Lorg/yaml/snakeyaml/TypeDescription;

    .line 103
    if-eqz p2, :cond_1

    .line 104
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/yaml/snakeyaml/TypeDescription;

    .line 105
    .local v1, "td":Lorg/yaml/snakeyaml/TypeDescription;
    invoke-virtual {p0, v1}, Lorg/yaml/snakeyaml/constructor/Constructor;->addTypeDescription(Lorg/yaml/snakeyaml/TypeDescription;)Lorg/yaml/snakeyaml/TypeDescription;

    .line 106
    .end local v1    # "td":Lorg/yaml/snakeyaml/TypeDescription;
    goto :goto_0

    .line 108
    :cond_1
    return-void

    .line 93
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Root type must be provided."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/TypeDescription;Lorg/yaml/snakeyaml/LoaderOptions;)V
    .locals 1
    .param p1, "theRoot"    # Lorg/yaml/snakeyaml/TypeDescription;
    .param p2, "loadingConfig"    # Lorg/yaml/snakeyaml/LoaderOptions;

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/yaml/snakeyaml/constructor/Constructor;-><init>(Lorg/yaml/snakeyaml/TypeDescription;Ljava/util/Collection;Lorg/yaml/snakeyaml/LoaderOptions;)V

    .line 84
    return-void
.end method

.method private static final check(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 128
    const-string v0, "Root type must be provided."

    if-eqz p0, :cond_1

    .line 131
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    return-object p0

    .line 132
    :cond_0
    new-instance v1, Lorg/yaml/snakeyaml/error/YAMLException;

    invoke-direct {v1, v0}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static checkRoot(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 72
    .local p0, "theRoot":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    if-eqz p0, :cond_0

    .line 75
    return-object p0

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Root class must be provided."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected getClassForName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 675
    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p1, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 676
    :catch_0
    move-exception v0

    .line 677
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    return-object v1
.end method

.method protected getClassForNode(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Class;
    .locals 6
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/yaml/snakeyaml/nodes/Node;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 657
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor;->typeTags:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 658
    .local v0, "classForTag":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 659
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v1

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/nodes/Tag;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 662
    .local v1, "name":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/yaml/snakeyaml/constructor/Constructor;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    .local v2, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 666
    iget-object v3, p0, Lorg/yaml/snakeyaml/constructor/Constructor;->typeTags:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    return-object v2

    .line 663
    .end local v2    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 664
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Class not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 669
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    return-object v0
.end method
