.class public Ljavassist/ClassMap;
.super Ljava/util/HashMap;
.source "ClassMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private parent:Ljavassist/ClassMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/ClassMap;->parent:Ljavassist/ClassMap;

    return-void
.end method

.method constructor <init>(Ljavassist/ClassMap;)V
    .locals 0
    .param p1, "map"    # Ljavassist/ClassMap;

    .line 62
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ljavassist/ClassMap;->parent:Ljavassist/ClassMap;

    return-void
.end method

.method public static toJavaName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "classname"    # Ljava/lang/String;

    .line 176
    invoke-static {p0}, Ljavassist/bytecode/Descriptor;->toJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toJvmName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "classname"    # Ljava/lang/String;

    .line 168
    invoke-static {p0}, Ljavassist/bytecode/Descriptor;->toJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public fix(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 159
    invoke-static {p1}, Ljavassist/ClassMap;->toJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "name2":Ljava/lang/String;
    invoke-super {p0, v0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    return-void
.end method

.method public fix(Ljavassist/CtClass;)V
    .locals 1
    .param p1, "clazz"    # Ljavassist/CtClass;

    .line 152
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavassist/ClassMap;->fix(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Ljavassist/ClassMap;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "jvmClassName"    # Ljava/lang/Object;

    .line 143
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 144
    .local v0, "found":Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v1, p0, Ljavassist/ClassMap;->parent:Ljavassist/ClassMap;

    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {v1, p1}, Ljavassist/ClassMap;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 146
    :cond_0
    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 52
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljavassist/ClassMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "oldname"    # Ljava/lang/String;
    .param p2, "newname"    # Ljava/lang/String;

    .line 98
    if-ne p1, p2, :cond_0

    .line 99
    return-object p1

    .line 101
    :cond_0
    invoke-static {p1}, Ljavassist/ClassMap;->toJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "oldname2":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljavassist/ClassMap;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 105
    :cond_1
    return-object v1

    .line 104
    :cond_2
    :goto_0
    invoke-static {p2}, Ljavassist/ClassMap;->toJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2
.end method

.method public put(Ljavassist/CtClass;Ljavassist/CtClass;)V
    .locals 2
    .param p1, "oldname"    # Ljavassist/CtClass;
    .param p2, "newname"    # Ljavassist/CtClass;

    .line 75
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljavassist/ClassMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    return-void
.end method

.method protected final put0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "oldname"    # Ljava/lang/String;
    .param p2, "newname"    # Ljava/lang/String;

    .line 128
    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public putIfNone(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "oldname"    # Ljava/lang/String;
    .param p2, "newname"    # Ljava/lang/String;

    .line 118
    if-ne p1, p2, :cond_0

    .line 119
    return-void

    .line 121
    :cond_0
    invoke-static {p1}, Ljavassist/ClassMap;->toJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "oldname2":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljavassist/ClassMap;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "s":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 124
    invoke-static {p2}, Ljavassist/ClassMap;->toJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_1
    return-void
.end method
