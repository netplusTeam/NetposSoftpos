.class public Lio/netty/handler/codec/http/DefaultHttpHeaders;
.super Lio/netty/handler/codec/http/HttpHeaders;
.source "DefaultHttpHeaders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderValueConverterAndValidator;,
        Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderValueConverter;
    }
.end annotation


# static fields
.field private static final HEADER_NAME_VALIDATOR:Lio/netty/util/ByteProcessor;

.field private static final HIGHEST_INVALID_VALUE_CHAR_MASK:I = -0x10

.field static final HttpNameValidator:Lio/netty/handler/codec/DefaultHeaders$NameValidator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/codec/DefaultHeaders$NameValidator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final headers:Lio/netty/handler/codec/DefaultHeaders;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/codec/DefaultHeaders<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lio/netty/handler/codec/http/DefaultHttpHeaders$1;

    invoke-direct {v0}, Lio/netty/handler/codec/http/DefaultHttpHeaders$1;-><init>()V

    sput-object v0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->HEADER_NAME_VALIDATOR:Lio/netty/util/ByteProcessor;

    .line 54
    new-instance v0, Lio/netty/handler/codec/http/DefaultHttpHeaders$2;

    invoke-direct {v0}, Lio/netty/handler/codec/http/DefaultHttpHeaders$2;-><init>()V

    sput-object v0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->HttpNameValidator:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 78
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/DefaultHttpHeaders;-><init>(Z)V

    .line 79
    return-void
.end method

.method protected constructor <init>(Lio/netty/handler/codec/DefaultHeaders;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/DefaultHeaders<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "*>;)V"
        }
    .end annotation

    .line 103
    .local p1, "headers":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<Ljava/lang/CharSequence;Ljava/lang/CharSequence;*>;"
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpHeaders;-><init>()V

    .line 104
    iput-object p1, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->headers:Lio/netty/handler/codec/DefaultHeaders;

    .line 105
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "validate"    # Z

    .line 94
    invoke-static {p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->nameValidator(Z)Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http/DefaultHttpHeaders;-><init>(ZLio/netty/handler/codec/DefaultHeaders$NameValidator;)V

    .line 95
    return-void
.end method

.method protected constructor <init>(ZLio/netty/handler/codec/DefaultHeaders$NameValidator;)V
    .locals 3
    .param p1, "validate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lio/netty/handler/codec/DefaultHeaders$NameValidator<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 98
    .local p2, "nameValidator":Lio/netty/handler/codec/DefaultHeaders$NameValidator;, "Lio/netty/handler/codec/DefaultHeaders$NameValidator<Ljava/lang/CharSequence;>;"
    new-instance v0, Lio/netty/handler/codec/DefaultHeadersImpl;

    sget-object v1, Lio/netty/util/AsciiString;->CASE_INSENSITIVE_HASHER:Lio/netty/util/HashingStrategy;

    .line 99
    invoke-static {p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->valueConverter(Z)Lio/netty/handler/codec/ValueConverter;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lio/netty/handler/codec/DefaultHeadersImpl;-><init>(Lio/netty/util/HashingStrategy;Lio/netty/handler/codec/ValueConverter;Lio/netty/handler/codec/DefaultHeaders$NameValidator;)V

    .line 98
    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/DefaultHttpHeaders;-><init>(Lio/netty/handler/codec/DefaultHeaders;)V

    .line 101
    return-void
.end method

.method static synthetic access$000(B)V
    .locals 0
    .param p0, "x0"    # B

    .line 45
    invoke-static {p0}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->validateHeaderNameElement(B)V

    return-void
.end method

.method static synthetic access$100()Lio/netty/util/ByteProcessor;
    .locals 1

    .line 45
    sget-object v0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->HEADER_NAME_VALIDATOR:Lio/netty/util/ByteProcessor;

    return-object v0
.end method

.method static synthetic access$200(C)V
    .locals 0
    .param p0, "x0"    # C

    .line 45
    invoke-static {p0}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->validateHeaderNameElement(C)V

    return-void
.end method

.method static nameValidator(Z)Lio/netty/handler/codec/DefaultHeaders$NameValidator;
    .locals 1
    .param p0, "validate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/netty/handler/codec/DefaultHeaders$NameValidator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 423
    if-eqz p0, :cond_0

    sget-object v0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->HttpNameValidator:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    goto :goto_0

    :cond_0
    sget-object v0, Lio/netty/handler/codec/DefaultHeaders$NameValidator;->NOT_NULL:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    :goto_0
    return-object v0
.end method

.method private static validateHeaderNameElement(B)V
    .locals 3
    .param p0, "value"    # B

    .line 369
    sparse-switch p0, :sswitch_data_0

    .line 386
    if-ltz p0, :cond_0

    .line 390
    return-void

    .line 381
    :sswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "a header name cannot contain the following prohibited characters: =,;: \\t\\r\\n\\v\\f: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "a header name cannot contain non-ASCII character: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x2c -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
    .end sparse-switch
.end method

.method private static validateHeaderNameElement(C)V
    .locals 3
    .param p0, "value"    # C

    .line 393
    sparse-switch p0, :sswitch_data_0

    .line 410
    const/16 v0, 0x7f

    if-gt p0, v0, :cond_0

    .line 415
    return-void

    .line 405
    :sswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "a header name cannot contain the following prohibited characters: =,;: \\t\\r\\n\\v\\f: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "a header name cannot contain non-ASCII character: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x2c -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
    .end sparse-switch
.end method

.method static valueConverter(Z)Lio/netty/handler/codec/ValueConverter;
    .locals 1
    .param p0, "validate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/netty/handler/codec/ValueConverter<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 418
    if-eqz p0, :cond_0

    sget-object v0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderValueConverterAndValidator;->INSTANCE:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderValueConverterAndValidator;

    goto :goto_0

    :cond_0
    sget-object v0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderValueConverter;->INSTANCE:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderValueConverter;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public add(Lio/netty/handler/codec/http/HttpHeaders;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 2
    .param p1, "headers"    # Lio/netty/handler/codec/http/HttpHeaders;

    .line 109
    instance-of v0, p1, Lio/netty/handler/codec/http/DefaultHttpHeaders;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->headers:Lio/netty/handler/codec/DefaultHeaders;

    move-object v1, p1

    check-cast v1, Lio/netty/handler/codec/http/DefaultHttpHeaders;

    iget-object v1, v1, Lio/netty/handler/codec/http/DefaultHttpHeaders;->headers:Lio/netty/handler/codec/DefaultHeaders;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/DefaultHeaders;->add(Lio/netty/handler/codec/Headers;)Lio/netty/handler/codec/Headers;

    .line 111
    return-object p0

    .line 113
    :cond_0
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->add(Lio/netty/handler/codec/http/HttpHeaders;)Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lio/netty/handler/codec/http/HttpHeaders;"
        }
    .end annotation

    .line 147
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->headers:Lio/netty/handler/codec/DefaultHeaders;

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/DefaultHeaders;->addObject(Ljava/lang/Object;Ljava/lang/Iterable;)Lio/netty/handler/codec/Headers;

    .line 148
    return-object p0
.end method

.method public add(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->headers:Lio/netty/handler/codec/DefaultHeaders;

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/DefaultHeaders;->addObject(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 136
    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lio/netty/handler/codec/http/HttpHeaders;"
        }
    .end annotation

    .line 141
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->headers:Lio/netty/handler/codec/DefaultHeaders;

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/DefaultHeaders;->addObject(Ljava/lang/Object;Ljava/lang/Iterable;)Lio/netty/handler/codec/Headers;

    .line 142
    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->headers:Lio/netty/handler/codec/DefaultHeaders;

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/DefaultHeaders;->addObject(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 130
    return-object p0
.end method

.method public addInt(Ljava/lang/CharSequence;I)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # I

    .line 153
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->headers:Lio/netty/handler/codec/DefaultHeaders;

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/DefaultHeaders;->addInt(Ljava/lang/Object;I)Lio/netty/handler/codec/Headers;

    .line 154
    return-object p0
.end method

.method public addShort(Ljava/lang/CharSequence;S)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # S

    .line 159
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->headers:Lio/netty/handler/codec/DefaultHeaders;

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/DefaultHeaders;->addShort(Ljava/lang/Object;S)Lio/netty/handler/codec/Headers;

    .line 160
    return-object p0
.end method

.method public clear()Lio/netty/handler/codec/http/HttpHeaders;
    .locals 1

    .line 213
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->headers:Lio/netty/handler/codec/DefaultHeaders;

    invoke-virtual {v0}, Lio/netty/handler/codec/DefaultHeaders;->clear()Lio/netty/handler/codec/Headers;

    .line 214
    return-object p0
.end method

.method public contains(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 324
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->headers:Lio/netty/handler/codec/DefaultHeaders;

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/DefaultHeaders;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/CharSequence;
    .param p3, "ignoreCase"    # Z

    .line 344
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->headers:Lio/netty/handler/codec/DefaultHeaders;

    if-eqz p3, :cond_0

    sget-object v1, Lio/netty/util/AsciiString;->CASE_INSENSITIVE_HASHER:Lio/netty/util/HashingStrategy;

    goto :goto_0

    :cond_0
    sget-object v1, Lio/netty/util/AsciiString;->CASE_SENSITIVE_HASHER:Lio/netty/util/HashingStrategy;

    :goto_0
    invoke-virtual {v0, p1, p2, v1}, Lio/netty/handler/codec/DefaultHeaders;->contains(Ljava/lang/Object;Ljava/lang/Object;Lio/netty/util/HashingStrategy;)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 319
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "ignoreCase"    # Z

    .line 339
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public copy()Lio/netty/handler/codec/http/HttpHeaders;
    .locals 2

    .line 365
    new-instance v0, Lio/netty/handler/codec/http/DefaultHttpHeaders;

    iget-object v1, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->headers:Lio/netty/handler/codec/DefaultHeaders;

    invoke-virtual {v1}, Lio/netty/handler/codec/DefaultHeaders;->copy()Lio/netty/handler/codec/DefaultHeaders;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;-><init>(Lio/netty/handler/codec/DefaultHeaders;)V

    return-object v0
.end method

.method public entries()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 269
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 272
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->headers:Lio/netty/handler/codec/DefaultHeaders;

    .line 273
    invoke-virtual {v1}, Lio/netty/handler/codec/DefaultHeaders;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 274
    .local v0, "entriesConverted":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 275
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 277
    :cond_1
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 354
    instance-of v0, p1, Lio/netty/handler/codec/http/DefaultHttpHeaders;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->headers:Lio/netty/handler/codec/DefaultHeaders;

    move-object v1, p1

    check-cast v1, Lio/netty/handler/codec/http/DefaultHttpHeaders;

    iget-object v1, v1, Lio/netty/handler/codec/http/DefaultHttpHeaders;->headers:Lio/netty/handler/codec/DefaultHeaders;

    sget-object v2, Lio/netty/util/AsciiString;->CASE_SENSITIVE_HASHER:Lio/netty/util/HashingStrategy;

    .line 355
    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/DefaultHeaders;->equals(Lio/netty/handler/codec/Headers;Lio/netty/util/HashingStrategy;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 354
    :goto_0
    return v0
.end method

.method public get(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 224
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->headers:Lio/netty/handler/codec/DefaultHeaders;

    invoke-static {v0, p1}, Lio/netty/handler/codec/HeadersUtils;->getAsString(Lio/netty/handler/codec/Headers;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 219
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAll(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->headers:Lio/netty/handler/codec/DefaultHeaders;

    invoke-static {v0, p1}, Lio/netty/handler/codec/HeadersUtils;->getAllAsString(Lio/netty/handler/codec/Headers;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAll(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 259
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->getAll(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInt(Ljava/lang/CharSequence;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "defaultValue"    # I

    .line 234
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->headers:Lio/netty/handler/codec/DefaultHeaders;

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/DefaultHeaders;->getInt(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 229
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->headers:Lio/netty/handler/codec/DefaultHeaders;

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getShort(Ljava/lang/CharSequence;)Ljava/lang/Short;
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 239
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->headers:Lio/netty/handler/codec/DefaultHeaders;

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getShort(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public getShort(Ljava/lang/CharSequence;S)S
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "defaultValue"    # S

    .line 244
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->headers:Lio/netty/handler/codec/DefaultHeaders;

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/DefaultHeaders;->getShort(Ljava/lang/Object;S)S

    move-result v0

    return v0
.end method

.method public getTimeMillis(Ljava/lang/CharSequence;J)J
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "defaultValue"    # J

    .line 254
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->headers:Lio/netty/handler/codec/DefaultHeaders;

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/handler/codec/DefaultHeaders;->getTimeMillis(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeMillis(Ljava/lang/CharSequence;)Ljava/lang/Long;
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 249
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->headers:Lio/netty/handler/codec/DefaultHeaders;

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getTimeMillis(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 360
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->headers:Lio/netty/handler/codec/DefaultHeaders;

    sget-object v1, Lio/netty/util/AsciiString;->CASE_SENSITIVE_HASHER:Lio/netty/util/HashingStrategy;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/DefaultHeaders;->hashCode(Lio/netty/util/HashingStrategy;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 329
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->headers:Lio/netty/handler/codec/DefaultHeaders;

    invoke-virtual {v0}, Lio/netty/handler/codec/DefaultHeaders;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 283
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->headers:Lio/netty/handler/codec/DefaultHeaders;

    invoke-static {v0}, Lio/netty/handler/codec/HeadersUtils;->iteratorAsString(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public iteratorCharSequence()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->headers:Lio/netty/handler/codec/DefaultHeaders;

    invoke-virtual {v0}, Lio/netty/handler/codec/DefaultHeaders;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public names()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->headers:Lio/netty/handler/codec/DefaultHeaders;

    invoke-static {v0}, Lio/netty/handler/codec/HeadersUtils;->namesAsString(Lio/netty/handler/codec/Headers;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 171
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->headers:Lio/netty/handler/codec/DefaultHeaders;

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/DefaultHeaders;->remove(Ljava/lang/Object;)Z

    .line 172
    return-object p0
.end method

.method public remove(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->headers:Lio/netty/handler/codec/DefaultHeaders;

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/DefaultHeaders;->remove(Ljava/lang/Object;)Z

    .line 166
    return-object p0
.end method

.method public set(Lio/netty/handler/codec/http/HttpHeaders;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 2
    .param p1, "headers"    # Lio/netty/handler/codec/http/HttpHeaders;

    .line 119
    instance-of v0, p1, Lio/netty/handler/codec/http/DefaultHttpHeaders;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->headers:Lio/netty/handler/codec/DefaultHeaders;

    move-object v1, p1

    check-cast v1, Lio/netty/handler/codec/http/DefaultHttpHeaders;

    iget-object v1, v1, Lio/netty/handler/codec/http/DefaultHttpHeaders;->headers:Lio/netty/handler/codec/DefaultHeaders;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/DefaultHeaders;->set(Lio/netty/handler/codec/Headers;)Lio/netty/handler/codec/Headers;

    .line 121
    return-object p0

    .line 123
    :cond_0
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->set(Lio/netty/handler/codec/http/HttpHeaders;)Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lio/netty/handler/codec/http/HttpHeaders;"
        }
    .end annotation

    .line 195
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->headers:Lio/netty/handler/codec/DefaultHeaders;

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/DefaultHeaders;->setObject(Ljava/lang/Object;Ljava/lang/Iterable;)Lio/netty/handler/codec/Headers;

    .line 196
    return-object p0
.end method

.method public set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->headers:Lio/netty/handler/codec/DefaultHeaders;

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/DefaultHeaders;->setObject(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 184
    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lio/netty/handler/codec/http/HttpHeaders;"
        }
    .end annotation

    .line 189
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->headers:Lio/netty/handler/codec/DefaultHeaders;

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/DefaultHeaders;->setObject(Ljava/lang/Object;Ljava/lang/Iterable;)Lio/netty/handler/codec/Headers;

    .line 190
    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->headers:Lio/netty/handler/codec/DefaultHeaders;

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/DefaultHeaders;->setObject(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 178
    return-object p0
.end method

.method public setInt(Ljava/lang/CharSequence;I)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # I

    .line 201
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->headers:Lio/netty/handler/codec/DefaultHeaders;

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/DefaultHeaders;->setInt(Ljava/lang/Object;I)Lio/netty/handler/codec/Headers;

    .line 202
    return-object p0
.end method

.method public setShort(Ljava/lang/CharSequence;S)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # S

    .line 207
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->headers:Lio/netty/handler/codec/DefaultHeaders;

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/DefaultHeaders;->setShort(Ljava/lang/Object;S)Lio/netty/handler/codec/Headers;

    .line 208
    return-object p0
.end method

.method public size()I
    .locals 1

    .line 334
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->headers:Lio/netty/handler/codec/DefaultHeaders;

    invoke-virtual {v0}, Lio/netty/handler/codec/DefaultHeaders;->size()I

    move-result v0

    return v0
.end method

.method public valueCharSequenceIterator(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;->headers:Lio/netty/handler/codec/DefaultHeaders;

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/DefaultHeaders;->valueIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public valueStringIterator(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 293
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->valueCharSequenceIterator(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object v0

    .line 294
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/CharSequence;>;"
    new-instance v1, Lio/netty/handler/codec/http/DefaultHttpHeaders$3;

    invoke-direct {v1, p0, v0}, Lio/netty/handler/codec/http/DefaultHttpHeaders$3;-><init>(Lio/netty/handler/codec/http/DefaultHttpHeaders;Ljava/util/Iterator;)V

    return-object v1
.end method
