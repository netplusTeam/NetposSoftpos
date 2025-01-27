.class public Lbsh/XThis;
.super Lbsh/This;
.source "XThis.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsh/XThis$Handler;
    }
.end annotation


# instance fields
.field interfaces:Ljava/util/Hashtable;

.field transient invocationHandler:Ljava/lang/reflect/InvocationHandler;


# direct methods
.method public constructor <init>(Lbsh/NameSpace;Lbsh/Interpreter;)V
    .locals 1
    .param p1, "namespace"    # Lbsh/NameSpace;
    .param p2, "declaringInterp"    # Lbsh/Interpreter;

    .line 65
    invoke-direct {p0, p1, p2}, Lbsh/This;-><init>(Lbsh/NameSpace;Lbsh/Interpreter;)V

    .line 62
    new-instance v0, Lbsh/XThis$Handler;

    invoke-direct {v0, p0}, Lbsh/XThis$Handler;-><init>(Lbsh/XThis;)V

    iput-object v0, p0, Lbsh/XThis;->invocationHandler:Ljava/lang/reflect/InvocationHandler;

    .line 66
    return-void
.end method


# virtual methods
.method public getInterface(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "clas"    # Ljava/lang/Class;

    .line 77
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lbsh/XThis;->getInterface([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getInterface([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .param p1, "ca"    # [Ljava/lang/Class;

    .line 85
    iget-object v0, p0, Lbsh/XThis;->interfaces:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lbsh/XThis;->interfaces:Ljava/util/Hashtable;

    .line 89
    :cond_0
    const/16 v0, 0x15

    .line 90
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 91
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    mul-int/2addr v0, v2

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 94
    .local v1, "hashKey":Ljava/lang/Object;
    iget-object v2, p0, Lbsh/XThis;->interfaces:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 96
    .local v2, "interf":Ljava/lang/Object;
    if-nez v2, :cond_2

    .line 98
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 99
    .local v3, "classLoader":Ljava/lang/ClassLoader;
    iget-object v4, p0, Lbsh/XThis;->invocationHandler:Ljava/lang/reflect/InvocationHandler;

    invoke-static {v3, p1, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    .line 101
    iget-object v4, p0, Lbsh/XThis;->interfaces:Ljava/util/Hashtable;

    invoke-virtual {v4, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .end local v3    # "classLoader":Ljava/lang/ClassLoader;
    :cond_2
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'this\' reference (XThis) to Bsh object: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbsh/XThis;->namespace:Lbsh/NameSpace;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
