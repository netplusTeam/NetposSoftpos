.class final Lcom/itextpdf/io/source/ByteBufferRandomAccessSource$2;
.super Ljava/lang/Object;
.source "ByteBufferRandomAccessSource.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;->clean(Ljava/nio/ByteBuffer;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$buffer:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource$2;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Boolean;
    .locals 7

    .line 180
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 183
    .local v0, "success":Ljava/lang/Boolean;
    :try_start_0
    sget-boolean v1, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;->UNMAP_SUPPORTED:Z

    if-eqz v1, :cond_0

    .line 184
    invoke-static {}, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;->access$000()Lcom/itextpdf/io/source/BufferCleaner;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource$2;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource$2;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/io/source/BufferCleaner;->freeBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource$2;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "cleaner"

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 188
    .local v1, "getCleanerMethod":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 189
    iget-object v2, p0, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource$2;->val$buffer:Ljava/nio/ByteBuffer;

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 190
    .local v2, "cleaner":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "clean"

    move-object v6, v3

    check-cast v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 191
    .local v4, "clean":Ljava/lang/reflect/Method;
    move-object v5, v3

    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {v4, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .end local v1    # "getCleanerMethod":Ljava/lang/reflect/Method;
    .end local v2    # "cleaner":Ljava/lang/Object;
    .end local v4    # "clean":Ljava/lang/reflect/Method;
    :goto_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 198
    goto :goto_1

    .line 194
    :catch_0
    move-exception v1

    .line 196
    .local v1, "e":Ljava/lang/Exception;
    const-class v2, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;

    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    .line 197
    .local v2, "logger":Lorg/slf4j/Logger;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 199
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "logger":Lorg/slf4j/Logger;
    :goto_1
    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 178
    invoke-virtual {p0}, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource$2;->run()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
