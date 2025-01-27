.class Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil$CheckingStream;
.super Ljava/io/ObjectInputStream;
.source "XMSSUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckingStream"
.end annotation


# static fields
.field private static final components:Ljava/util/Set;


# instance fields
.field private found:Z

.field private final mainClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil$CheckingStream;->components:Ljava/util/Set;

    .line 5
    const-string v1, "java.util.TreeMap"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    const-string v1, "java.lang.Integer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    const-string v1, "java.lang.Number"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    const-string v1, "org.bouncycastle.pqc.crypto.xmss.BDS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9
    const-string v1, "java.util.ArrayList"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10
    const-string v1, "org.bouncycastle.pqc.crypto.xmss.XMSSNode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 11
    const-string v1, "[B"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12
    const-string v1, "java.util.LinkedList"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    const-string v1, "java.util.Stack"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14
    const-string v1, "java.util.Vector"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 15
    const-string v1, "[Ljava.lang.Object;"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    const-string v1, "org.bouncycastle.pqc.crypto.xmss.BDSTreeHash"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil$CheckingStream;->found:Z

    .line 9
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil$CheckingStream;->mainClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method protected resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectStreamClass;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil$CheckingStream;->found:Z

    const-string/jumbo v1, "unexpected class: "

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil$CheckingStream;->mainClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil$CheckingStream;->found:Z

    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Ljava/io/InvalidClassException;

    .line 12
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_1
    sget-object v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil$CheckingStream;->components:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 27
    :goto_0
    invoke-super {p0, p1}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 28
    :cond_2
    new-instance v0, Ljava/io/InvalidClassException;

    .line 29
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method
