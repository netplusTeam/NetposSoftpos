.class public Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;
.super Ljava/lang/Object;
.source "DefaultHttpDataFactory.java"

# interfaces
.implements Lio/netty/handler/codec/http/multipart/HttpDataFactory;


# static fields
.field public static final MAXSIZE:J = -0x1L

.field public static final MINSIZE:J = 0x4000L


# instance fields
.field private charset:Ljava/nio/charset/Charset;

.field private final checkSize:Z

.field private maxSize:J

.field private minSize:J

.field private final requestFileDeleteMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/netty/handler/codec/http/HttpRequest;",
            "Ljava/util/List<",
            "Lio/netty/handler/codec/http/multipart/HttpData;",
            ">;>;"
        }
    .end annotation
.end field

.field private final useDisk:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->maxSize:J

    .line 60
    sget-object v0, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->charset:Ljava/nio/charset/Charset;

    .line 69
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 70
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->requestFileDeleteMap:Ljava/util/Map;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->useDisk:Z

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->checkSize:Z

    .line 79
    const-wide/16 v0, 0x4000

    iput-wide v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->minSize:J

    .line 80
    return-void
.end method

.method public constructor <init>(J)V
    .locals 2
    .param p1, "minSize"    # J

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->maxSize:J

    .line 60
    sget-object v0, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->charset:Ljava/nio/charset/Charset;

    .line 69
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 70
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->requestFileDeleteMap:Ljava/util/Map;

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->useDisk:Z

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->checkSize:Z

    .line 106
    iput-wide p1, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->minSize:J

    .line 107
    return-void
.end method

.method public constructor <init>(JLjava/nio/charset/Charset;)V
    .locals 0
    .param p1, "minSize"    # J
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .line 110
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;-><init>(J)V

    .line 111
    iput-object p3, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->charset:Ljava/nio/charset/Charset;

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 0
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 83
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;-><init>()V

    .line 84
    iput-object p1, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->charset:Ljava/nio/charset/Charset;

    .line 85
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "useDisk"    # Z

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->maxSize:J

    .line 60
    sget-object v0, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->charset:Ljava/nio/charset/Charset;

    .line 69
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 70
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->requestFileDeleteMap:Ljava/util/Map;

    .line 91
    iput-boolean p1, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->useDisk:Z

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->checkSize:Z

    .line 93
    return-void
.end method

.method public constructor <init>(ZLjava/nio/charset/Charset;)V
    .locals 0
    .param p1, "useDisk"    # Z
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 96
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;-><init>(Z)V

    .line 97
    iput-object p2, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->charset:Ljava/nio/charset/Charset;

    .line 98
    return-void
.end method

.method private static checkHttpDataSize(Lio/netty/handler/codec/http/multipart/HttpData;)V
    .locals 3
    .param p0, "data"    # Lio/netty/handler/codec/http/multipart/HttpData;

    .line 178
    :try_start_0
    invoke-interface {p0}, Lio/netty/handler/codec/http/multipart/HttpData;->length()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lio/netty/handler/codec/http/multipart/HttpData;->checkSize(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    nop

    .line 182
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "ignored":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Attribute bigger than maxSize allowed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getList(Lio/netty/handler/codec/http/HttpRequest;)Ljava/util/List;
    .locals 2
    .param p1, "request"    # Lio/netty/handler/codec/http/HttpRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/http/HttpRequest;",
            ")",
            "Ljava/util/List<",
            "Lio/netty/handler/codec/http/multipart/HttpData;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->requestFileDeleteMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 124
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/multipart/HttpData;>;"
    if-nez v0, :cond_0

    .line 125
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 126
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->requestFileDeleteMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_0
    return-object v0
.end method


# virtual methods
.method public cleanAllHttpData()V
    .locals 5

    .line 291
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->requestFileDeleteMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 292
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lio/netty/handler/codec/http/HttpRequest;Ljava/util/List<Lio/netty/handler/codec/http/multipart/HttpData;>;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 293
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 298
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lio/netty/handler/codec/http/HttpRequest;Ljava/util/List<Lio/netty/handler/codec/http/multipart/HttpData;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 299
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/multipart/HttpData;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/netty/handler/codec/http/multipart/HttpData;

    .line 300
    .local v4, "data":Lio/netty/handler/codec/http/multipart/HttpData;
    invoke-interface {v4}, Lio/netty/handler/codec/http/multipart/HttpData;->release()Z

    .line 301
    .end local v4    # "data":Lio/netty/handler/codec/http/multipart/HttpData;
    goto :goto_1

    .line 303
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 304
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lio/netty/handler/codec/http/HttpRequest;Ljava/util/List<Lio/netty/handler/codec/http/multipart/HttpData;>;>;"
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/multipart/HttpData;>;"
    goto :goto_0

    .line 305
    :cond_1
    return-void
.end method

.method public cleanAllHttpDatas()V
    .locals 0

    .line 314
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->cleanAllHttpData()V

    .line 315
    return-void
.end method

.method public cleanRequestHttpData(Lio/netty/handler/codec/http/HttpRequest;)V
    .locals 3
    .param p1, "request"    # Lio/netty/handler/codec/http/HttpRequest;

    .line 281
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->requestFileDeleteMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 282
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/multipart/HttpData;>;"
    if-eqz v0, :cond_0

    .line 283
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/handler/codec/http/multipart/HttpData;

    .line 284
    .local v2, "data":Lio/netty/handler/codec/http/multipart/HttpData;
    invoke-interface {v2}, Lio/netty/handler/codec/http/multipart/HttpData;->release()Z

    .line 285
    .end local v2    # "data":Lio/netty/handler/codec/http/multipart/HttpData;
    goto :goto_0

    .line 287
    :cond_0
    return-void
.end method

.method public cleanRequestHttpDatas(Lio/netty/handler/codec/http/HttpRequest;)V
    .locals 0
    .param p1, "request"    # Lio/netty/handler/codec/http/HttpRequest;

    .line 309
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->cleanRequestHttpData(Lio/netty/handler/codec/http/HttpRequest;)V

    .line 310
    return-void
.end method

.method public createAttribute(Lio/netty/handler/codec/http/HttpRequest;Ljava/lang/String;)Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 4
    .param p1, "request"    # Lio/netty/handler/codec/http/HttpRequest;
    .param p2, "name"    # Ljava/lang/String;

    .line 133
    iget-boolean v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->useDisk:Z

    if-eqz v0, :cond_0

    .line 134
    new-instance v0, Lio/netty/handler/codec/http/multipart/DiskAttribute;

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, p2, v1}, Lio/netty/handler/codec/http/multipart/DiskAttribute;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 135
    .local v0, "attribute":Lio/netty/handler/codec/http/multipart/Attribute;
    iget-wide v1, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->maxSize:J

    invoke-interface {v0, v1, v2}, Lio/netty/handler/codec/http/multipart/Attribute;->setMaxSize(J)V

    .line 136
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->getList(Lio/netty/handler/codec/http/HttpRequest;)Ljava/util/List;

    move-result-object v1

    .line 137
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/multipart/HttpData;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    return-object v0

    .line 140
    .end local v0    # "attribute":Lio/netty/handler/codec/http/multipart/Attribute;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/multipart/HttpData;>;"
    :cond_0
    iget-boolean v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->checkSize:Z

    if-eqz v0, :cond_1

    .line 141
    new-instance v0, Lio/netty/handler/codec/http/multipart/MixedAttribute;

    iget-wide v1, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->minSize:J

    iget-object v3, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, p2, v1, v2, v3}, Lio/netty/handler/codec/http/multipart/MixedAttribute;-><init>(Ljava/lang/String;JLjava/nio/charset/Charset;)V

    .line 142
    .restart local v0    # "attribute":Lio/netty/handler/codec/http/multipart/Attribute;
    iget-wide v1, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->maxSize:J

    invoke-interface {v0, v1, v2}, Lio/netty/handler/codec/http/multipart/Attribute;->setMaxSize(J)V

    .line 143
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->getList(Lio/netty/handler/codec/http/HttpRequest;)Ljava/util/List;

    move-result-object v1

    .line 144
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/multipart/HttpData;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    return-object v0

    .line 147
    .end local v0    # "attribute":Lio/netty/handler/codec/http/multipart/Attribute;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/multipart/HttpData;>;"
    :cond_1
    new-instance v0, Lio/netty/handler/codec/http/multipart/MemoryAttribute;

    invoke-direct {v0, p2}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, "attribute":Lio/netty/handler/codec/http/multipart/MemoryAttribute;
    iget-wide v1, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->maxSize:J

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->setMaxSize(J)V

    .line 149
    return-object v0
.end method

.method public createAttribute(Lio/netty/handler/codec/http/HttpRequest;Ljava/lang/String;J)Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 8
    .param p1, "request"    # Lio/netty/handler/codec/http/HttpRequest;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "definedSize"    # J

    .line 154
    iget-boolean v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->useDisk:Z

    if-eqz v0, :cond_0

    .line 155
    new-instance v0, Lio/netty/handler/codec/http/multipart/DiskAttribute;

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, p2, p3, p4, v1}, Lio/netty/handler/codec/http/multipart/DiskAttribute;-><init>(Ljava/lang/String;JLjava/nio/charset/Charset;)V

    .line 156
    .local v0, "attribute":Lio/netty/handler/codec/http/multipart/Attribute;
    iget-wide v1, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->maxSize:J

    invoke-interface {v0, v1, v2}, Lio/netty/handler/codec/http/multipart/Attribute;->setMaxSize(J)V

    .line 157
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->getList(Lio/netty/handler/codec/http/HttpRequest;)Ljava/util/List;

    move-result-object v1

    .line 158
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/multipart/HttpData;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    return-object v0

    .line 161
    .end local v0    # "attribute":Lio/netty/handler/codec/http/multipart/Attribute;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/multipart/HttpData;>;"
    :cond_0
    iget-boolean v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->checkSize:Z

    if-eqz v0, :cond_1

    .line 162
    new-instance v0, Lio/netty/handler/codec/http/multipart/MixedAttribute;

    iget-wide v5, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->minSize:J

    iget-object v7, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->charset:Ljava/nio/charset/Charset;

    move-object v1, v0

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v1 .. v7}, Lio/netty/handler/codec/http/multipart/MixedAttribute;-><init>(Ljava/lang/String;JJLjava/nio/charset/Charset;)V

    .line 163
    .restart local v0    # "attribute":Lio/netty/handler/codec/http/multipart/Attribute;
    iget-wide v1, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->maxSize:J

    invoke-interface {v0, v1, v2}, Lio/netty/handler/codec/http/multipart/Attribute;->setMaxSize(J)V

    .line 164
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->getList(Lio/netty/handler/codec/http/HttpRequest;)Ljava/util/List;

    move-result-object v1

    .line 165
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/multipart/HttpData;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    return-object v0

    .line 168
    .end local v0    # "attribute":Lio/netty/handler/codec/http/multipart/Attribute;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/multipart/HttpData;>;"
    :cond_1
    new-instance v0, Lio/netty/handler/codec/http/multipart/MemoryAttribute;

    invoke-direct {v0, p2, p3, p4}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;-><init>(Ljava/lang/String;J)V

    .line 169
    .local v0, "attribute":Lio/netty/handler/codec/http/multipart/MemoryAttribute;
    iget-wide v1, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->maxSize:J

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->setMaxSize(J)V

    .line 170
    return-object v0
.end method

.method public createAttribute(Lio/netty/handler/codec/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;)Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 8
    .param p1, "request"    # Lio/netty/handler/codec/http/HttpRequest;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 186
    iget-boolean v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->useDisk:Z

    if-eqz v0, :cond_0

    .line 189
    :try_start_0
    new-instance v0, Lio/netty/handler/codec/http/multipart/DiskAttribute;

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, p2, p3, v1}, Lio/netty/handler/codec/http/multipart/DiskAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 190
    .local v0, "attribute":Lio/netty/handler/codec/http/multipart/Attribute;
    iget-wide v1, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->maxSize:J

    invoke-interface {v0, v1, v2}, Lio/netty/handler/codec/http/multipart/Attribute;->setMaxSize(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    goto :goto_0

    .line 191
    .end local v0    # "attribute":Lio/netty/handler/codec/http/multipart/Attribute;
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Lio/netty/handler/codec/http/multipart/MixedAttribute;

    iget-wide v4, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->minSize:J

    iget-object v6, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->charset:Ljava/nio/charset/Charset;

    move-object v1, v7

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/codec/http/multipart/MixedAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/nio/charset/Charset;)V

    .line 194
    .local v1, "attribute":Lio/netty/handler/codec/http/multipart/Attribute;
    iget-wide v2, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->maxSize:J

    invoke-interface {v1, v2, v3}, Lio/netty/handler/codec/http/multipart/Attribute;->setMaxSize(J)V

    move-object v0, v1

    .line 196
    .end local v1    # "attribute":Lio/netty/handler/codec/http/multipart/Attribute;
    .local v0, "attribute":Lio/netty/handler/codec/http/multipart/Attribute;
    :goto_0
    invoke-static {v0}, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->checkHttpDataSize(Lio/netty/handler/codec/http/multipart/HttpData;)V

    .line 197
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->getList(Lio/netty/handler/codec/http/HttpRequest;)Ljava/util/List;

    move-result-object v1

    .line 198
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/multipart/HttpData;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    return-object v0

    .line 201
    .end local v0    # "attribute":Lio/netty/handler/codec/http/multipart/Attribute;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/multipart/HttpData;>;"
    :cond_0
    iget-boolean v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->checkSize:Z

    if-eqz v0, :cond_1

    .line 202
    new-instance v0, Lio/netty/handler/codec/http/multipart/MixedAttribute;

    iget-wide v4, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->minSize:J

    iget-object v6, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->charset:Ljava/nio/charset/Charset;

    move-object v1, v0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/codec/http/multipart/MixedAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/nio/charset/Charset;)V

    .line 203
    .restart local v0    # "attribute":Lio/netty/handler/codec/http/multipart/Attribute;
    iget-wide v1, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->maxSize:J

    invoke-interface {v0, v1, v2}, Lio/netty/handler/codec/http/multipart/Attribute;->setMaxSize(J)V

    .line 204
    invoke-static {v0}, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->checkHttpDataSize(Lio/netty/handler/codec/http/multipart/HttpData;)V

    .line 205
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->getList(Lio/netty/handler/codec/http/HttpRequest;)Ljava/util/List;

    move-result-object v1

    .line 206
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/multipart/HttpData;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    return-object v0

    .line 210
    .end local v0    # "attribute":Lio/netty/handler/codec/http/multipart/Attribute;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/multipart/HttpData;>;"
    :cond_1
    :try_start_1
    new-instance v0, Lio/netty/handler/codec/http/multipart/MemoryAttribute;

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, p2, p3, v1}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 211
    .local v0, "attribute":Lio/netty/handler/codec/http/multipart/MemoryAttribute;
    iget-wide v1, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->maxSize:J

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->setMaxSize(J)V

    .line 212
    invoke-static {v0}, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->checkHttpDataSize(Lio/netty/handler/codec/http/multipart/HttpData;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 213
    return-object v0

    .line 214
    .end local v0    # "attribute":Lio/netty/handler/codec/http/multipart/MemoryAttribute;
    :catch_1
    move-exception v0

    .line 215
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createFileUpload(Lio/netty/handler/codec/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;J)Lio/netty/handler/codec/http/multipart/FileUpload;
    .locals 12
    .param p1, "request"    # Lio/netty/handler/codec/http/HttpRequest;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "contentTransferEncoding"    # Ljava/lang/String;
    .param p6, "charset"    # Ljava/nio/charset/Charset;
    .param p7, "size"    # J

    .line 223
    move-object v0, p0

    iget-boolean v1, v0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->useDisk:Z

    if-eqz v1, :cond_0

    .line 224
    new-instance v1, Lio/netty/handler/codec/http/multipart/DiskFileUpload;

    move-object v2, v1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-direct/range {v2 .. v9}, Lio/netty/handler/codec/http/multipart/DiskFileUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;J)V

    .line 226
    .local v1, "fileUpload":Lio/netty/handler/codec/http/multipart/FileUpload;
    iget-wide v2, v0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->maxSize:J

    invoke-interface {v1, v2, v3}, Lio/netty/handler/codec/http/multipart/FileUpload;->setMaxSize(J)V

    .line 227
    invoke-static {v1}, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->checkHttpDataSize(Lio/netty/handler/codec/http/multipart/HttpData;)V

    .line 228
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->getList(Lio/netty/handler/codec/http/HttpRequest;)Ljava/util/List;

    move-result-object v2

    .line 229
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/multipart/HttpData;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    return-object v1

    .line 232
    .end local v1    # "fileUpload":Lio/netty/handler/codec/http/multipart/FileUpload;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/multipart/HttpData;>;"
    :cond_0
    iget-boolean v1, v0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->checkSize:Z

    if-eqz v1, :cond_1

    .line 233
    new-instance v1, Lio/netty/handler/codec/http/multipart/MixedFileUpload;

    iget-wide v10, v0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->minSize:J

    move-object v2, v1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-direct/range {v2 .. v11}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;JJ)V

    .line 235
    .restart local v1    # "fileUpload":Lio/netty/handler/codec/http/multipart/FileUpload;
    iget-wide v2, v0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->maxSize:J

    invoke-interface {v1, v2, v3}, Lio/netty/handler/codec/http/multipart/FileUpload;->setMaxSize(J)V

    .line 236
    invoke-static {v1}, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->checkHttpDataSize(Lio/netty/handler/codec/http/multipart/HttpData;)V

    .line 237
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->getList(Lio/netty/handler/codec/http/HttpRequest;)Ljava/util/List;

    move-result-object v2

    .line 238
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/multipart/HttpData;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    return-object v1

    .line 241
    .end local v1    # "fileUpload":Lio/netty/handler/codec/http/multipart/FileUpload;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/multipart/HttpData;>;"
    :cond_1
    new-instance v1, Lio/netty/handler/codec/http/multipart/MemoryFileUpload;

    move-object v3, v1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-wide/from16 v9, p7

    invoke-direct/range {v3 .. v10}, Lio/netty/handler/codec/http/multipart/MemoryFileUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;J)V

    .line 243
    .local v1, "fileUpload":Lio/netty/handler/codec/http/multipart/MemoryFileUpload;
    iget-wide v2, v0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->maxSize:J

    invoke-virtual {v1, v2, v3}, Lio/netty/handler/codec/http/multipart/MemoryFileUpload;->setMaxSize(J)V

    .line 244
    invoke-static {v1}, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->checkHttpDataSize(Lio/netty/handler/codec/http/multipart/HttpData;)V

    .line 245
    return-object v1
.end method

.method public removeHttpDataFromClean(Lio/netty/handler/codec/http/HttpRequest;Lio/netty/handler/codec/http/multipart/InterfaceHttpData;)V
    .locals 4
    .param p1, "request"    # Lio/netty/handler/codec/http/HttpRequest;
    .param p2, "data"    # Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    .line 250
    instance-of v0, p2, Lio/netty/handler/codec/http/multipart/HttpData;

    if-nez v0, :cond_0

    .line 251
    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->requestFileDeleteMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 257
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http/multipart/HttpData;>;"
    if-nez v0, :cond_1

    .line 258
    return-void

    .line 263
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 264
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lio/netty/handler/codec/http/multipart/HttpData;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 265
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/handler/codec/http/multipart/HttpData;

    .line 266
    .local v2, "n":Lio/netty/handler/codec/http/multipart/HttpData;
    if-ne v2, p2, :cond_3

    .line 267
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 270
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 271
    iget-object v3, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->requestFileDeleteMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :cond_2
    return-void

    .line 276
    .end local v2    # "n":Lio/netty/handler/codec/http/multipart/HttpData;
    :cond_3
    goto :goto_0

    .line 277
    :cond_4
    return-void
.end method

.method public setMaxLimit(J)V
    .locals 0
    .param p1, "maxSize"    # J

    .line 116
    iput-wide p1, p0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;->maxSize:J

    .line 117
    return-void
.end method
