.class public final Lokhttp3/logging/HttpLoggingInterceptor;
.super Ljava/lang/Object;
.source "HttpLoggingInterceptor.kt"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/logging/HttpLoggingInterceptor$Level;,
        Lokhttp3/logging/HttpLoggingInterceptor$Logger;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0002\u001e\u001fB\u0011\u0008\u0007\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\r\u0010\u000b\u001a\u00020\tH\u0007\u00a2\u0006\u0002\u0008\u0012J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u000e\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u0007J\u000e\u0010\u001d\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tR\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t@GX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\n\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lokhttp3/logging/HttpLoggingInterceptor;",
        "Lokhttp3/Interceptor;",
        "logger",
        "Lokhttp3/logging/HttpLoggingInterceptor$Logger;",
        "(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V",
        "headersToRedact",
        "",
        "",
        "<set-?>",
        "Lokhttp3/logging/HttpLoggingInterceptor$Level;",
        "level",
        "getLevel",
        "()Lokhttp3/logging/HttpLoggingInterceptor$Level;",
        "(Lokhttp3/logging/HttpLoggingInterceptor$Level;)V",
        "bodyHasUnknownEncoding",
        "",
        "headers",
        "Lokhttp3/Headers;",
        "-deprecated_level",
        "intercept",
        "Lokhttp3/Response;",
        "chain",
        "Lokhttp3/Interceptor$Chain;",
        "logHeader",
        "",
        "i",
        "",
        "redactHeader",
        "name",
        "setLevel",
        "Level",
        "Logger",
        "okhttp-logging-interceptor"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field private volatile headersToRedact:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

.field private final logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V
    .locals 1
    .param p1, "logger"    # Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    const-string v0, "logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    .line 43
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/logging/HttpLoggingInterceptor;->headersToRedact:Ljava/util/Set;

    .line 46
    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    iput-object v0, p0, Lokhttp3/logging/HttpLoggingInterceptor;->level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    return-void
.end method

.method public synthetic constructor <init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 40
    sget-object p1, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->DEFAULT:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    :cond_0
    invoke-direct {p0, p1}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V

    return-void
.end method

.method private final bodyHasUnknownEncoding(Lokhttp3/Headers;)Z
    .locals 4
    .param p1, "headers"    # Lokhttp3/Headers;

    .line 290
    const-string v0, "Content-Encoding"

    invoke-virtual {p1, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 291
    .local v0, "contentEncoding":Ljava/lang/String;
    nop

    .line 292
    nop

    .line 291
    const-string v2, "identity"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 292
    const-string v2, "gzip"

    invoke-static {v0, v2, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    nop

    .line 291
    :goto_0
    return v1

    .line 290
    .end local v0    # "contentEncoding":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method private final logHeader(Lokhttp3/Headers;I)V
    .locals 4
    .param p1, "headers"    # Lokhttp3/Headers;
    .param p2, "i"    # I

    .line 285
    iget-object v0, p0, Lokhttp3/logging/HttpLoggingInterceptor;->headersToRedact:Ljava/util/Set;

    invoke-virtual {p1, p2}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u2588\u2588"

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "value":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 287
    return-void
.end method


# virtual methods
.method public final -deprecated_level()Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to var"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "level"
            imports = {}
        .end subannotation
    .end annotation

    .line 146
    iget-object v0, p0, Lokhttp3/logging/HttpLoggingInterceptor;->level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    return-object v0
.end method

.method public final getLevel()Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .locals 1

    .line 46
    iget-object v0, p0, Lokhttp3/logging/HttpLoggingInterceptor;->level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    return-object v0
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 32
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "chain"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-object v3, v1, Lokhttp3/logging/HttpLoggingInterceptor;->level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 152
    .local v3, "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v4

    .line 153
    .local v4, "request":Lokhttp3/Request;
    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    if-ne v3, v0, :cond_0

    .line 154
    invoke-interface {v2, v4}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    return-object v0

    .line 157
    :cond_0
    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    if-ne v3, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v7, v0

    .line 158
    .local v7, "logBody":Z
    if-nez v7, :cond_3

    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->HEADERS:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    if-ne v3, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    move v8, v0

    .line 160
    .local v8, "logHeaders":Z
    invoke-virtual {v4}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v9

    .line 162
    .local v9, "requestBody":Lokhttp3/RequestBody;
    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->connection()Lokhttp3/Connection;

    move-result-object v10

    .line 163
    .local v10, "connection":Lokhttp3/Connection;
    nop

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "--> "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v11, 0x20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, ""

    if-eqz v10, :cond_4

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v10}, Lokhttp3/Connection;->protocol()Lokhttp3/Protocol;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_3

    :cond_4
    move-object v13, v12

    :goto_3
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    nop

    .line 165
    .local v0, "requestStartMessage":Ljava/lang/String;
    const-string v13, "-byte body)"

    const-string v14, " ("

    if-nez v8, :cond_5

    if-eqz v9, :cond_5

    .line 166
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v17, v12

    invoke-virtual {v9}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v11

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    goto :goto_4

    .line 165
    :cond_5
    move-object/from16 v17, v12

    .line 168
    move-object v11, v0

    .end local v0    # "requestStartMessage":Ljava/lang/String;
    .local v11, "requestStartMessage":Ljava/lang/String;
    :goto_4
    iget-object v0, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    invoke-interface {v0, v11}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 170
    const-string v0, "-byte body omitted)"

    const-string v12, "UTF_8"

    const-wide/16 v18, -0x1

    if-eqz v8, :cond_13

    .line 171
    invoke-virtual {v4}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v15

    .line 173
    .local v15, "headers":Lokhttp3/Headers;
    if-eqz v9, :cond_a

    .line 176
    invoke-virtual {v9}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v20

    if-eqz v20, :cond_7

    move-object/from16 v21, v20

    .local v21, "it":Lokhttp3/MediaType;
    const/16 v20, 0x0

    .line 177
    .local v20, "$i$a$-let-HttpLoggingInterceptor$intercept$1":I
    const-string v5, "Content-Type"

    invoke-virtual {v15, v5}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6

    .line 178
    iget-object v5, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v3

    .end local v3    # "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .local v24, "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    const-string v3, "Content-Type: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v6, v21

    .end local v21    # "it":Lokhttp3/MediaType;
    .local v6, "it":Lokhttp3/MediaType;
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto :goto_5

    .line 177
    .end local v6    # "it":Lokhttp3/MediaType;
    .end local v24    # "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .restart local v3    # "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .restart local v21    # "it":Lokhttp3/MediaType;
    :cond_6
    move-object/from16 v24, v3

    move-object/from16 v6, v21

    .line 180
    .end local v3    # "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .end local v21    # "it":Lokhttp3/MediaType;
    .restart local v6    # "it":Lokhttp3/MediaType;
    .restart local v24    # "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    :goto_5
    nop

    .end local v6    # "it":Lokhttp3/MediaType;
    .end local v20    # "$i$a$-let-HttpLoggingInterceptor$intercept$1":I
    goto :goto_6

    .line 176
    .end local v24    # "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .restart local v3    # "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    :cond_7
    move-object/from16 v24, v3

    .end local v3    # "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .restart local v24    # "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    :goto_6
    nop

    .line 181
    invoke-virtual {v9}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v5

    cmp-long v3, v5, v18

    if-eqz v3, :cond_9

    .line 182
    const-string v3, "Content-Length"

    invoke-virtual {v15, v3}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    .line 183
    iget-object v3, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Content-Length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v10

    move-object/from16 v20, v11

    .end local v10    # "connection":Lokhttp3/Connection;
    .end local v11    # "requestStartMessage":Ljava/lang/String;
    .local v6, "connection":Lokhttp3/Connection;
    .local v20, "requestStartMessage":Ljava/lang/String;
    invoke-virtual {v9}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto :goto_7

    .line 182
    .end local v6    # "connection":Lokhttp3/Connection;
    .end local v20    # "requestStartMessage":Ljava/lang/String;
    .restart local v10    # "connection":Lokhttp3/Connection;
    .restart local v11    # "requestStartMessage":Ljava/lang/String;
    :cond_8
    move-object v6, v10

    move-object/from16 v20, v11

    .end local v10    # "connection":Lokhttp3/Connection;
    .end local v11    # "requestStartMessage":Ljava/lang/String;
    .restart local v6    # "connection":Lokhttp3/Connection;
    .restart local v20    # "requestStartMessage":Ljava/lang/String;
    goto :goto_7

    .line 181
    .end local v6    # "connection":Lokhttp3/Connection;
    .end local v20    # "requestStartMessage":Ljava/lang/String;
    .restart local v10    # "connection":Lokhttp3/Connection;
    .restart local v11    # "requestStartMessage":Ljava/lang/String;
    :cond_9
    move-object v6, v10

    move-object/from16 v20, v11

    .end local v10    # "connection":Lokhttp3/Connection;
    .end local v11    # "requestStartMessage":Ljava/lang/String;
    .restart local v6    # "connection":Lokhttp3/Connection;
    .restart local v20    # "requestStartMessage":Ljava/lang/String;
    goto :goto_7

    .line 173
    .end local v6    # "connection":Lokhttp3/Connection;
    .end local v20    # "requestStartMessage":Ljava/lang/String;
    .end local v24    # "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .restart local v3    # "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .restart local v10    # "connection":Lokhttp3/Connection;
    .restart local v11    # "requestStartMessage":Ljava/lang/String;
    :cond_a
    move-object/from16 v24, v3

    move-object v6, v10

    move-object/from16 v20, v11

    .line 188
    .end local v3    # "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .end local v10    # "connection":Lokhttp3/Connection;
    .end local v11    # "requestStartMessage":Ljava/lang/String;
    .restart local v6    # "connection":Lokhttp3/Connection;
    .restart local v20    # "requestStartMessage":Ljava/lang/String;
    .restart local v24    # "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    :goto_7
    invoke-virtual {v15}, Lokhttp3/Headers;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v3, :cond_b

    .line 189
    .local v5, "i":I
    invoke-direct {v1, v15, v5}, Lokhttp3/logging/HttpLoggingInterceptor;->logHeader(Lokhttp3/Headers;I)V

    .line 188
    const/4 v10, 0x1

    .end local v5    # "i":I
    add-int/2addr v5, v10

    goto :goto_8

    .line 192
    :cond_b
    const-string v3, "--> END "

    if-eqz v7, :cond_12

    if-nez v9, :cond_c

    move-object/from16 v21, v6

    move-object/from16 v26, v17

    move-object/from16 v17, v15

    goto/16 :goto_a

    .line 194
    :cond_c
    invoke-virtual {v4}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v5

    invoke-direct {v1, v5}, Lokhttp3/logging/HttpLoggingInterceptor;->bodyHasUnknownEncoding(Lokhttp3/Headers;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 195
    iget-object v5, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " (encoded body omitted)"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    move-object/from16 v21, v6

    move-object/from16 v26, v17

    goto/16 :goto_b

    .line 196
    :cond_d
    invoke-virtual {v9}, Lokhttp3/RequestBody;->isDuplex()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 197
    iget-object v5, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " (duplex request body omitted)"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    move-object/from16 v21, v6

    move-object/from16 v26, v17

    goto/16 :goto_b

    .line 198
    :cond_e
    invoke-virtual {v9}, Lokhttp3/RequestBody;->isOneShot()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 199
    iget-object v5, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " (one-shot body omitted)"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    move-object/from16 v21, v6

    move-object/from16 v26, v17

    goto/16 :goto_b

    .line 201
    :cond_f
    new-instance v5, Lokio/Buffer;

    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    .line 202
    .local v5, "buffer":Lokio/Buffer;
    move-object v10, v5

    check-cast v10, Lokio/BufferedSink;

    invoke-virtual {v9, v10}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 204
    invoke-virtual {v9}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v10

    .line 205
    .local v10, "contentType":Lokhttp3/MediaType;
    if-eqz v10, :cond_10

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v11}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v11

    if-eqz v11, :cond_10

    goto :goto_9

    :cond_10
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    .local v11, "charset":Ljava/nio/charset/Charset;
    :goto_9
    move-object/from16 v21, v6

    .end local v6    # "connection":Lokhttp3/Connection;
    .local v21, "connection":Lokhttp3/Connection;
    iget-object v6, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v25, v10

    move-object/from16 v10, v17

    .end local v10    # "contentType":Lokhttp3/MediaType;
    .local v25, "contentType":Lokhttp3/MediaType;
    invoke-interface {v6, v10}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 208
    invoke-static {v5}, Lokhttp3/logging/Utf8Kt;->isProbablyUtf8(Lokio/Buffer;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 209
    iget-object v6, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v17, v15

    .end local v15    # "headers":Lokhttp3/Headers;
    .local v17, "headers":Lokhttp3/Headers;
    invoke-virtual {v5, v11}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v6, v15}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 210
    iget-object v6, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v26, v10

    move-object v15, v11

    .end local v11    # "charset":Ljava/nio/charset/Charset;
    .local v15, "charset":Ljava/nio/charset/Charset;
    invoke-virtual {v9}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto :goto_b

    .line 212
    .end local v17    # "headers":Lokhttp3/Headers;
    .restart local v11    # "charset":Ljava/nio/charset/Charset;
    .local v15, "headers":Lokhttp3/Headers;
    :cond_11
    move-object/from16 v26, v10

    move-object/from16 v17, v15

    move-object v15, v11

    .end local v11    # "charset":Ljava/nio/charset/Charset;
    .local v15, "charset":Ljava/nio/charset/Charset;
    .restart local v17    # "headers":Lokhttp3/Headers;
    iget-object v6, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    .line 213
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " (binary "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 212
    invoke-interface {v6, v3}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto :goto_b

    .line 192
    .end local v5    # "buffer":Lokio/Buffer;
    .end local v17    # "headers":Lokhttp3/Headers;
    .end local v21    # "connection":Lokhttp3/Connection;
    .end local v25    # "contentType":Lokhttp3/MediaType;
    .restart local v6    # "connection":Lokhttp3/Connection;
    .local v15, "headers":Lokhttp3/Headers;
    :cond_12
    move-object/from16 v21, v6

    move-object/from16 v26, v17

    move-object/from16 v17, v15

    .line 193
    .end local v6    # "connection":Lokhttp3/Connection;
    .end local v15    # "headers":Lokhttp3/Headers;
    .restart local v17    # "headers":Lokhttp3/Headers;
    .restart local v21    # "connection":Lokhttp3/Connection;
    :goto_a
    iget-object v5, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto :goto_b

    .line 170
    .end local v17    # "headers":Lokhttp3/Headers;
    .end local v20    # "requestStartMessage":Ljava/lang/String;
    .end local v21    # "connection":Lokhttp3/Connection;
    .end local v24    # "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .restart local v3    # "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .local v10, "connection":Lokhttp3/Connection;
    .local v11, "requestStartMessage":Ljava/lang/String;
    :cond_13
    move-object/from16 v24, v3

    move-object/from16 v21, v10

    move-object/from16 v20, v11

    move-object/from16 v26, v17

    .line 214
    .end local v3    # "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .end local v10    # "connection":Lokhttp3/Connection;
    .end local v11    # "requestStartMessage":Ljava/lang/String;
    .restart local v20    # "requestStartMessage":Ljava/lang/String;
    .restart local v21    # "connection":Lokhttp3/Connection;
    .restart local v24    # "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    :goto_b
    nop

    .line 215
    nop

    .line 218
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 219
    .local v5, "startNs":J
    const/4 v3, 0x0

    .line 220
    .local v3, "response":Lokhttp3/Response;
    nop

    .line 221
    :try_start_0
    invoke-interface {v2, v4}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v10

    .line 225
    nop

    .line 227
    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v27

    move-object v15, v12

    sub-long v11, v27, v5

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    .line 229
    .local v10, "tookMs":J
    invoke-virtual {v3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v12

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 230
    .local v12, "responseBody":Lokhttp3/ResponseBody;
    move-object/from16 v17, v4

    move-wide/from16 v27, v5

    .end local v4    # "request":Lokhttp3/Request;
    .end local v5    # "startNs":J
    .local v17, "request":Lokhttp3/Request;
    .local v27, "startNs":J
    invoke-virtual {v12}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v4

    .line 231
    .local v4, "contentLength":J
    cmp-long v6, v4, v18

    if-eqz v6, :cond_14

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v2, "-byte"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    :cond_14
    const-string/jumbo v2, "unknown-length"

    .line 232
    .local v2, "bodySize":Ljava/lang/String;
    :goto_c
    iget-object v6, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    .line 233
    move-object/from16 v18, v9

    .end local v9    # "requestBody":Lokhttp3/RequestBody;
    .local v18, "requestBody":Lokhttp3/RequestBody;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v15

    const-string v15, "<-- "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lokhttp3/Response;->code()I

    move-result v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-nez v15, :cond_15

    const/4 v15, 0x1

    goto :goto_d

    :cond_15
    const/4 v15, 0x0

    :goto_d
    if-eqz v15, :cond_16

    move-wide/from16 v30, v4

    move-object/from16 v25, v13

    move-object/from16 v4, v26

    const/16 v29, 0x20

    goto :goto_e

    :cond_16
    invoke-virtual {v3}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v25, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v30, v4

    const/16 v29, 0x20

    .end local v4    # "contentLength":J
    .local v30, "contentLength":J
    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_e
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v5, v29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v8, :cond_17

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ", "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " body"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_f

    :cond_17
    move-object/from16 v5, v26

    :goto_f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 232
    invoke-interface {v6, v4}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 235
    if-eqz v8, :cond_21

    .line 236
    invoke-virtual {v3}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v4

    .line 237
    .local v4, "headers":Lokhttp3/Headers;
    invoke-virtual {v4}, Lokhttp3/Headers;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_10
    if-ge v6, v5, :cond_18

    .line 238
    .local v6, "i":I
    invoke-direct {v1, v4, v6}, Lokhttp3/logging/HttpLoggingInterceptor;->logHeader(Lokhttp3/Headers;I)V

    .line 237
    const/4 v9, 0x1

    .end local v6    # "i":I
    add-int/2addr v6, v9

    goto :goto_10

    .line 241
    :cond_18
    if-eqz v7, :cond_20

    invoke-static {v3}, Lokhttp3/internal/http/HttpHeaders;->promisesBody(Lokhttp3/Response;)Z

    move-result v5

    if-nez v5, :cond_19

    move-object/from16 v22, v2

    move-object/from16 v19, v4

    goto/16 :goto_14

    .line 243
    :cond_19
    invoke-virtual {v3}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v5

    invoke-direct {v1, v5}, Lokhttp3/logging/HttpLoggingInterceptor;->bodyHasUnknownEncoding(Lokhttp3/Headers;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 244
    iget-object v0, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    const-string v5, "<-- END HTTP (encoded body omitted)"

    invoke-interface {v0, v5}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    move-object/from16 v22, v2

    goto/16 :goto_15

    .line 246
    :cond_1a
    invoke-virtual {v12}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v5

    .line 247
    .local v5, "source":Lokio/BufferedSource;
    const-wide v13, 0x7fffffffffffffffL

    invoke-interface {v5, v13, v14}, Lokio/BufferedSource;->request(J)Z

    .line 248
    invoke-interface {v5}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object v6

    .line 250
    .local v6, "buffer":Ljava/lang/Object;
    const/4 v9, 0x0

    move-object v13, v9

    check-cast v13, Ljava/lang/Long;

    .line 251
    .local v13, "gzippedLength":Ljava/lang/Long;
    const-string v14, "Content-Encoding"

    invoke-virtual {v4, v14}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "gzip"

    const/4 v9, 0x1

    invoke-static {v15, v14, v9}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 252
    invoke-virtual {v6}, Lokio/Buffer;->size()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 253
    new-instance v9, Lokio/GzipSource;

    invoke-virtual {v6}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v14

    check-cast v14, Lokio/Source;

    invoke-direct {v9, v14}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    check-cast v9, Ljava/io/Closeable;

    const/4 v14, 0x0

    move-object v15, v14

    check-cast v15, Ljava/lang/Throwable;

    :try_start_1
    move-object v14, v9

    check-cast v14, Lokio/GzipSource;

    .local v14, "gzippedResponseBody":Lokio/GzipSource;
    const/4 v15, 0x0

    .line 254
    .local v15, "$i$a$-use-HttpLoggingInterceptor$intercept$2":I
    new-instance v22, Lokio/Buffer;

    invoke-direct/range {v22 .. v22}, Lokio/Buffer;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v6, v22

    .line 255
    move-object/from16 v22, v2

    .end local v2    # "bodySize":Ljava/lang/String;
    .local v22, "bodySize":Ljava/lang/String;
    :try_start_2
    move-object v2, v14

    check-cast v2, Lokio/Source;

    invoke-virtual {v6, v2}, Lokio/Buffer;->writeAll(Lokio/Source;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 253
    .end local v14    # "gzippedResponseBody":Lokio/GzipSource;
    .end local v15    # "$i$a$-use-HttpLoggingInterceptor$intercept$2":I
    const/4 v2, 0x0

    invoke-static {v9, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_12

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_11

    .end local v22    # "bodySize":Ljava/lang/String;
    .restart local v2    # "bodySize":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v22, v2

    move-object v2, v0

    .end local v2    # "bodySize":Ljava/lang/String;
    .end local v3    # "response":Lokhttp3/Response;
    .end local v4    # "headers":Lokhttp3/Headers;
    .end local v5    # "source":Lokio/BufferedSource;
    .end local v6    # "buffer":Ljava/lang/Object;
    .end local v7    # "logBody":Z
    .end local v8    # "logHeaders":Z
    .end local v10    # "tookMs":J
    .end local v12    # "responseBody":Lokhttp3/ResponseBody;
    .end local v13    # "gzippedLength":Ljava/lang/Long;
    .end local v17    # "request":Lokhttp3/Request;
    .end local v18    # "requestBody":Lokhttp3/RequestBody;
    .end local v20    # "requestStartMessage":Ljava/lang/String;
    .end local v21    # "connection":Lokhttp3/Connection;
    .end local v24    # "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .end local v27    # "startNs":J
    .end local v30    # "contentLength":J
    .end local p1    # "chain":Lokhttp3/Interceptor$Chain;
    :goto_11
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .restart local v3    # "response":Lokhttp3/Response;
    .restart local v4    # "headers":Lokhttp3/Headers;
    .restart local v5    # "source":Lokio/BufferedSource;
    .restart local v6    # "buffer":Ljava/lang/Object;
    .restart local v7    # "logBody":Z
    .restart local v8    # "logHeaders":Z
    .restart local v10    # "tookMs":J
    .restart local v12    # "responseBody":Lokhttp3/ResponseBody;
    .restart local v13    # "gzippedLength":Ljava/lang/Long;
    .restart local v17    # "request":Lokhttp3/Request;
    .restart local v18    # "requestBody":Lokhttp3/RequestBody;
    .restart local v20    # "requestStartMessage":Ljava/lang/String;
    .restart local v21    # "connection":Lokhttp3/Connection;
    .restart local v22    # "bodySize":Ljava/lang/String;
    .restart local v24    # "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .restart local v27    # "startNs":J
    .restart local v30    # "contentLength":J
    .restart local p1    # "chain":Lokhttp3/Interceptor$Chain;
    :catchall_2
    move-exception v0

    move-object v14, v0

    invoke-static {v9, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v14

    .line 251
    .end local v22    # "bodySize":Ljava/lang/String;
    .restart local v2    # "bodySize":Ljava/lang/String;
    :cond_1b
    move-object/from16 v22, v2

    .line 259
    .end local v2    # "bodySize":Ljava/lang/String;
    .restart local v22    # "bodySize":Ljava/lang/String;
    :goto_12
    invoke-virtual {v12}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v2

    .line 260
    .local v2, "contentType":Lokhttp3/MediaType;
    if-eqz v2, :cond_1c

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v9}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v9

    if-eqz v9, :cond_1c

    goto :goto_13

    :cond_1c
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v14, v19

    invoke-static {v9, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    .local v9, "charset":Ljava/nio/charset/Charset;
    :goto_13
    invoke-static {v6}, Lokhttp3/logging/Utf8Kt;->isProbablyUtf8(Lokio/Buffer;)Z

    move-result v14

    if-nez v14, :cond_1d

    .line 263
    iget-object v14, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v15, v26

    invoke-interface {v14, v15}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 264
    iget-object v14, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v2

    .end local v2    # "contentType":Lokhttp3/MediaType;
    .local v16, "contentType":Lokhttp3/MediaType;
    const-string v2, "<-- END HTTP (binary "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v19, v4

    move-object/from16 v23, v5

    .end local v4    # "headers":Lokhttp3/Headers;
    .end local v5    # "source":Lokio/BufferedSource;
    .local v19, "headers":Lokhttp3/Headers;
    .local v23, "source":Lokio/BufferedSource;
    invoke-virtual {v6}, Lokio/Buffer;->size()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v0}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 265
    return-object v3

    .line 268
    .end local v16    # "contentType":Lokhttp3/MediaType;
    .end local v19    # "headers":Lokhttp3/Headers;
    .end local v23    # "source":Lokio/BufferedSource;
    .restart local v2    # "contentType":Lokhttp3/MediaType;
    .restart local v4    # "headers":Lokhttp3/Headers;
    .restart local v5    # "source":Lokio/BufferedSource;
    :cond_1d
    move-object/from16 v16, v2

    move-object/from16 v19, v4

    move-object/from16 v23, v5

    move-object/from16 v15, v26

    .end local v2    # "contentType":Lokhttp3/MediaType;
    .end local v4    # "headers":Lokhttp3/Headers;
    .end local v5    # "source":Lokio/BufferedSource;
    .restart local v16    # "contentType":Lokhttp3/MediaType;
    .restart local v19    # "headers":Lokhttp3/Headers;
    .restart local v23    # "source":Lokio/BufferedSource;
    const-wide/16 v4, 0x0

    cmp-long v0, v30, v4

    if-eqz v0, :cond_1e

    .line 269
    iget-object v0, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    invoke-interface {v0, v15}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 270
    iget-object v0, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    invoke-virtual {v6}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v2

    invoke-virtual {v2, v9}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 273
    :cond_1e
    const-string v0, "<-- END HTTP ("

    if-eqz v13, :cond_1f

    .line 274
    iget-object v2, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lokio/Buffer;->size()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "-byte, "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "-gzipped-byte body)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto :goto_15

    .line 276
    :cond_1f
    iget-object v2, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lokio/Buffer;->size()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v4, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto :goto_15

    .line 241
    .end local v6    # "buffer":Ljava/lang/Object;
    .end local v9    # "charset":Ljava/nio/charset/Charset;
    .end local v13    # "gzippedLength":Ljava/lang/Long;
    .end local v16    # "contentType":Lokhttp3/MediaType;
    .end local v19    # "headers":Lokhttp3/Headers;
    .end local v22    # "bodySize":Ljava/lang/String;
    .end local v23    # "source":Lokio/BufferedSource;
    .local v2, "bodySize":Ljava/lang/String;
    .restart local v4    # "headers":Lokhttp3/Headers;
    :cond_20
    move-object/from16 v22, v2

    move-object/from16 v19, v4

    .line 242
    .end local v2    # "bodySize":Ljava/lang/String;
    .end local v4    # "headers":Lokhttp3/Headers;
    .restart local v19    # "headers":Lokhttp3/Headers;
    .restart local v22    # "bodySize":Ljava/lang/String;
    :goto_14
    iget-object v0, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    const-string v2, "<-- END HTTP"

    invoke-interface {v0, v2}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto :goto_15

    .line 235
    .end local v19    # "headers":Lokhttp3/Headers;
    .end local v22    # "bodySize":Ljava/lang/String;
    .restart local v2    # "bodySize":Ljava/lang/String;
    :cond_21
    move-object/from16 v22, v2

    .line 277
    .end local v2    # "bodySize":Ljava/lang/String;
    .restart local v22    # "bodySize":Ljava/lang/String;
    :goto_15
    nop

    .line 278
    nop

    .line 281
    return-object v3

    .line 222
    .end local v10    # "tookMs":J
    .end local v12    # "responseBody":Lokhttp3/ResponseBody;
    .end local v17    # "request":Lokhttp3/Request;
    .end local v18    # "requestBody":Lokhttp3/RequestBody;
    .end local v22    # "bodySize":Ljava/lang/String;
    .end local v27    # "startNs":J
    .end local v30    # "contentLength":J
    .local v4, "request":Lokhttp3/Request;
    .local v5, "startNs":J
    .local v9, "requestBody":Lokhttp3/RequestBody;
    :catch_0
    move-exception v0

    move-object/from16 v17, v4

    move-wide/from16 v27, v5

    move-object/from16 v18, v9

    move-object v2, v0

    .end local v4    # "request":Lokhttp3/Request;
    .end local v5    # "startNs":J
    .end local v9    # "requestBody":Lokhttp3/RequestBody;
    .restart local v17    # "request":Lokhttp3/Request;
    .restart local v18    # "requestBody":Lokhttp3/RequestBody;
    .restart local v27    # "startNs":J
    move-object v0, v2

    .line 223
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, v1, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<-- HTTP FAILED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 224
    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public final level(Lokhttp3/logging/HttpLoggingInterceptor$Level;)V
    .locals 1
    .param p1, "<set-?>"    # Lokhttp3/logging/HttpLoggingInterceptor$Level;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lokhttp3/logging/HttpLoggingInterceptor;->level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    return-void
.end method

.method public final redactHeader(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {v1}, Lkotlin/text/StringsKt;->getCASE_INSENSITIVE_ORDER(Lkotlin/jvm/internal/StringCompanionObject;)Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 124
    .local v0, "newHeadersToRedact":Ljava/util/TreeSet;
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    iget-object v2, p0, Lokhttp3/logging/HttpLoggingInterceptor;->headersToRedact:Ljava/util/Set;

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 125
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 126
    move-object v1, v0

    check-cast v1, Ljava/util/Set;

    iput-object v1, p0, Lokhttp3/logging/HttpLoggingInterceptor;->headersToRedact:Ljava/util/Set;

    .line 127
    return-void
.end method

.method public final setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;
    .locals 2
    .param p1, "level"    # Lokhttp3/logging/HttpLoggingInterceptor$Level;

    const-string v0, "level"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    move-object v0, p0

    check-cast v0, Lokhttp3/logging/HttpLoggingInterceptor;

    .local v0, "$this$apply":Lokhttp3/logging/HttpLoggingInterceptor;
    const/4 v1, 0x0

    .line 137
    .local v1, "$i$a$-apply-HttpLoggingInterceptor$setLevel$1":I
    iput-object p1, v0, Lokhttp3/logging/HttpLoggingInterceptor;->level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 138
    nop

    .line 136
    .end local v0    # "$this$apply":Lokhttp3/logging/HttpLoggingInterceptor;
    .end local v1    # "$i$a$-apply-HttpLoggingInterceptor$setLevel$1":I
    move-object v0, p0

    check-cast v0, Lokhttp3/logging/HttpLoggingInterceptor;

    .line 138
    return-object v0
.end method
