.class final Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderValueConverterAndValidator;
.super Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderValueConverter;
.source "DefaultHttpHeaders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/DefaultHttpHeaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HeaderValueConverterAndValidator"
.end annotation


# static fields
.field static final INSTANCE:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderValueConverterAndValidator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 445
    new-instance v0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderValueConverterAndValidator;

    invoke-direct {v0}, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderValueConverterAndValidator;-><init>()V

    sput-object v0, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderValueConverterAndValidator;->INSTANCE:Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderValueConverterAndValidator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 444
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderValueConverter;-><init>(Lio/netty/handler/codec/http/DefaultHttpHeaders$1;)V

    return-void
.end method

.method private static validateValueChar(Ljava/lang/CharSequence;IC)I
    .locals 3
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "state"    # I
    .param p2, "character"    # C

    .line 469
    and-int/lit8 v0, p2, -0x10

    if-nez v0, :cond_0

    .line 471
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 477
    :sswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "a header value contains a prohibited character \'\\f\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :sswitch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "a header value contains a prohibited character \'\\v\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :sswitch_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "a header value contains a prohibited character \'\u0000\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 482
    :cond_0
    :goto_0
    const/4 v0, 0x2

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 499
    :pswitch_0
    sparse-switch p2, :sswitch_data_1

    .line 504
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "only \' \' and \'\\t\' are allowed after \'\\n\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 502
    :sswitch_3
    const/4 v0, 0x0

    return v0

    .line 492
    :pswitch_1
    packed-switch p2, :pswitch_data_1

    .line 496
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "only \'\\n\' is allowed after \'\\r\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 494
    :pswitch_2
    return v0

    .line 484
    :pswitch_3
    sparse-switch p2, :sswitch_data_2

    .line 490
    goto :goto_1

    .line 486
    :sswitch_4
    const/4 v0, 0x1

    return v0

    .line 488
    :sswitch_5
    return v0

    .line 507
    :goto_1
    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0xb -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x9 -> :sswitch_3
        0x20 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_2
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0xa -> :sswitch_5
        0xd -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public convertObject(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;

    .line 449
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderValueConverter;->convertObject(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 450
    .local v0, "seq":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 452
    .local v1, "state":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 453
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v0, v1, v3}, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderValueConverterAndValidator;->validateValueChar(Ljava/lang/CharSequence;IC)I

    move-result v1

    .line 452
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 456
    .end local v2    # "index":I
    :cond_0
    if-nez v1, :cond_1

    .line 459
    return-object v0

    .line 457
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "a header value must not end with \'\\r\' or \'\\n\':"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public bridge synthetic convertObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 444
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders$HeaderValueConverterAndValidator;->convertObject(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
