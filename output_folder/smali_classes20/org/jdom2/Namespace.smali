.class public final Lorg/jdom2/Namespace;
.super Ljava/lang/Object;
.source "Namespace.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom2/Namespace$NamespaceSerializationProxy;
    }
.end annotation


# static fields
.field public static final NO_NAMESPACE:Lorg/jdom2/Namespace;

.field private static final XMLNS_NAMESPACE:Lorg/jdom2/Namespace;

.field public static final XML_NAMESPACE:Lorg/jdom2/Namespace;

.field private static final namespacemap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lorg/jdom2/Namespace;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0xc8L


# instance fields
.field private final transient prefix:Ljava/lang/String;

.field private final transient uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 90
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x200

    const/high16 v2, 0x3f400000    # 0.75f

    const/16 v3, 0x40

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lorg/jdom2/Namespace;->namespacemap:Ljava/util/concurrent/ConcurrentMap;

    .line 94
    new-instance v1, Lorg/jdom2/Namespace;

    const-string v2, ""

    invoke-direct {v1, v2, v2}, Lorg/jdom2/Namespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    .line 98
    new-instance v2, Lorg/jdom2/Namespace;

    const-string/jumbo v3, "xml"

    const-string v4, "http://www.w3.org/XML/1998/namespace"

    invoke-direct {v2, v3, v4}, Lorg/jdom2/Namespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lorg/jdom2/Namespace;->XML_NAMESPACE:Lorg/jdom2/Namespace;

    .line 101
    new-instance v3, Lorg/jdom2/Namespace;

    const-string/jumbo v4, "xmlns"

    const-string v5, "http://www.w3.org/2000/xmlns/"

    invoke-direct {v3, v4, v5}, Lorg/jdom2/Namespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lorg/jdom2/Namespace;->XMLNS_NAMESPACE:Lorg/jdom2/Namespace;

    .line 107
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 109
    .local v4, "nmap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Lorg/jdom2/Namespace;>;"
    invoke-virtual {v1}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-virtual {v1}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 114
    .local v1, "xmap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Lorg/jdom2/Namespace;>;"
    invoke-virtual {v2}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-virtual {v2}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 119
    .local v2, "xnsmap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Lorg/jdom2/Namespace;>;"
    invoke-virtual {v3}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-virtual {v3}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .end local v1    # "xmap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Lorg/jdom2/Namespace;>;"
    .end local v2    # "xnsmap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Lorg/jdom2/Namespace;>;"
    .end local v4    # "nmap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Lorg/jdom2/Namespace;>;"
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-object p1, p0, Lorg/jdom2/Namespace;->prefix:Ljava/lang/String;

    .line 281
    iput-object p2, p0, Lorg/jdom2/Namespace;->uri:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public static getNamespace(Ljava/lang/String;)Lorg/jdom2/Namespace;
    .locals 1
    .param p0, "uri"    # Ljava/lang/String;

    .line 268
    const-string v0, ""

    invoke-static {v0, p0}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v0

    return-object v0
.end method

.method public static getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;
    .locals 8
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "uri"    # Ljava/lang/String;

    .line 146
    const-string v0, "Namespace URIs must be non-null and non-empty Strings"

    const-string v1, "namespace"

    const-string v2, ""

    if-nez p1, :cond_2

    .line 147
    if-eqz p0, :cond_1

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    new-instance v3, Lorg/jdom2/IllegalNameException;

    invoke-direct {v3, v2, v1, v0}, Lorg/jdom2/IllegalNameException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 148
    :cond_1
    :goto_0
    sget-object v0, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    return-object v0

    .line 158
    :cond_2
    sget-object v3, Lorg/jdom2/Namespace;->namespacemap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ConcurrentMap;

    .line 159
    .local v4, "urimap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Lorg/jdom2/Namespace;>;"
    const-string v5, "Namespace URI"

    if-nez v4, :cond_4

    .line 163
    invoke-static {p1}, Lorg/jdom2/Verifier;->checkNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .local v7, "reason":Ljava/lang/String;
    if-nez v6, :cond_3

    .line 167
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v4, v6

    .line 168
    invoke-interface {v3, p1, v4}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ConcurrentMap;

    .line 171
    .local v3, "xmap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Lorg/jdom2/Namespace;>;"
    if-eqz v3, :cond_4

    .line 175
    move-object v4, v3

    goto :goto_1

    .line 164
    .end local v3    # "xmap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Lorg/jdom2/Namespace;>;"
    :cond_3
    new-instance v0, Lorg/jdom2/IllegalNameException;

    invoke-direct {v0, p1, v5, v7}, Lorg/jdom2/IllegalNameException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 181
    .end local v7    # "reason":Ljava/lang/String;
    :cond_4
    :goto_1
    if-nez p0, :cond_5

    move-object v3, v2

    goto :goto_2

    :cond_5
    move-object v3, p0

    :goto_2
    invoke-interface {v4, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jdom2/Namespace;

    .line 182
    .local v3, "ns":Lorg/jdom2/Namespace;
    if-eqz v3, :cond_6

    .line 184
    return-object v3

    .line 190
    :cond_6
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 201
    const-string v0, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 208
    const-string v0, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 215
    if-nez p0, :cond_7

    goto :goto_3

    :cond_7
    move-object v2, p0

    :goto_3
    move-object v0, v2

    .line 221
    .local v0, "pfx":Ljava/lang/String;
    const-string/jumbo v1, "xml"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Namespace prefix"

    if-nez v1, :cond_b

    .line 230
    const-string/jumbo v1, "xmlns"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 237
    invoke-static {v0}, Lorg/jdom2/Verifier;->checkNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    .local v5, "reason":Ljava/lang/String;
    if-nez v1, :cond_9

    .line 242
    new-instance v1, Lorg/jdom2/Namespace;

    invoke-direct {v1, v0, p1}, Lorg/jdom2/Namespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .end local v3    # "ns":Lorg/jdom2/Namespace;
    .local v1, "ns":Lorg/jdom2/Namespace;
    invoke-interface {v4, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom2/Namespace;

    .line 244
    .local v2, "prev":Lorg/jdom2/Namespace;
    if-eqz v2, :cond_8

    .line 247
    move-object v1, v2

    .line 249
    :cond_8
    return-object v1

    .line 238
    .end local v1    # "ns":Lorg/jdom2/Namespace;
    .end local v2    # "prev":Lorg/jdom2/Namespace;
    .restart local v3    # "ns":Lorg/jdom2/Namespace;
    :cond_9
    new-instance v1, Lorg/jdom2/IllegalNameException;

    invoke-direct {v1, v0, v2, v5}, Lorg/jdom2/IllegalNameException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 232
    .end local v5    # "reason":Ljava/lang/String;
    :cond_a
    new-instance v1, Lorg/jdom2/IllegalNameException;

    const-string v5, "The prefix xmlns (any case) can only be bound to only the \'http://www.w3.org/2000/xmlns/\' uri."

    invoke-direct {v1, p1, v2, v5}, Lorg/jdom2/IllegalNameException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 223
    :cond_b
    new-instance v1, Lorg/jdom2/IllegalNameException;

    const-string v5, "The prefix xml (any case) can only be bound to only the \'http://www.w3.org/XML/1998/namespace\' uri."

    invoke-direct {v1, p1, v2, v5}, Lorg/jdom2/IllegalNameException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 209
    .end local v0    # "pfx":Ljava/lang/String;
    :cond_c
    new-instance v0, Lorg/jdom2/IllegalNameException;

    const-string v1, "The http://www.w3.org/2000/xmlns/ must be bound to only the \'xmlns\' prefix."

    invoke-direct {v0, p1, v5, v1}, Lorg/jdom2/IllegalNameException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_d
    new-instance v0, Lorg/jdom2/IllegalNameException;

    const-string v1, "The http://www.w3.org/XML/1998/namespace must be bound to only the \'xml\' prefix."

    invoke-direct {v0, p1, v5, v1}, Lorg/jdom2/IllegalNameException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_e
    new-instance v5, Lorg/jdom2/IllegalNameException;

    invoke-direct {v5, v2, v1, v0}, Lorg/jdom2/IllegalNameException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v5
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 389
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Namespace is serialized through a proxy"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 3

    .line 379
    new-instance v0, Lorg/jdom2/Namespace$NamespaceSerializationProxy;

    iget-object v1, p0, Lorg/jdom2/Namespace;->prefix:Ljava/lang/String;

    iget-object v2, p0, Lorg/jdom2/Namespace;->uri:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/jdom2/Namespace$NamespaceSerializationProxy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "ob"    # Ljava/lang/Object;

    .line 312
    if-ne p0, p1, :cond_0

    .line 313
    const/4 v0, 0x1

    return v0

    .line 315
    :cond_0
    instance-of v0, p1, Lorg/jdom2/Namespace;

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lorg/jdom2/Namespace;->uri:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lorg/jdom2/Namespace;

    iget-object v1, v1, Lorg/jdom2/Namespace;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 318
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 290
    iget-object v0, p0, Lorg/jdom2/Namespace;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 1

    .line 299
    iget-object v0, p0, Lorg/jdom2/Namespace;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 344
    iget-object v0, p0, Lorg/jdom2/Namespace;->uri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Namespace: prefix \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jdom2/Namespace;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" is mapped to URI \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jdom2/Namespace;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
