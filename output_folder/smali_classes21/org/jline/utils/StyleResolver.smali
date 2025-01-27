.class public Lorg/jline/utils/StyleResolver;
.super Ljava/lang/Object;
.source "StyleResolver.java"


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final source:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lorg/jline/utils/StyleResolver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jline/utils/StyleResolver;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 31
    .local p1, "source":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Function;

    iput-object v0, p0, Lorg/jline/utils/StyleResolver;->source:Ljava/util/function/Function;

    .line 33
    return-void
.end method

.method private apply(Lorg/jline/utils/AttributedStyle;Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;
    .locals 5
    .param p1, "style"    # Lorg/jline/utils/AttributedStyle;
    .param p2, "spec"    # Ljava/lang/String;

    .line 194
    sget-object v0, Lorg/jline/utils/StyleResolver;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Apply: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 198
    :cond_0
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    .line 199
    .local v3, "item":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 200
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 201
    goto :goto_1

    .line 204
    :cond_1
    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 205
    invoke-direct {p0, p1, v3}, Lorg/jline/utils/StyleResolver;->applyReference(Lorg/jline/utils/AttributedStyle;Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object p1

    goto :goto_1

    .line 206
    :cond_2
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 207
    invoke-direct {p0, p1, v3}, Lorg/jline/utils/StyleResolver;->applyColor(Lorg/jline/utils/AttributedStyle;Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object p1

    goto :goto_1

    .line 208
    :cond_3
    const-string v4, "[0-9]+(;[0-9]+)*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 209
    invoke-direct {p0, p1, v3}, Lorg/jline/utils/StyleResolver;->applyAnsi(Lorg/jline/utils/AttributedStyle;Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object p1

    goto :goto_1

    .line 211
    :cond_4
    invoke-direct {p0, p1, v3}, Lorg/jline/utils/StyleResolver;->applyNamed(Lorg/jline/utils/AttributedStyle;Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object p1

    .line 198
    .end local v3    # "item":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 215
    :cond_5
    return-object p1
.end method

.method private applyAnsi(Lorg/jline/utils/AttributedStyle;Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;
    .locals 3
    .param p1, "style"    # Lorg/jline/utils/AttributedStyle;
    .param p2, "spec"    # Ljava/lang/String;

    .line 219
    sget-object v0, Lorg/jline/utils/StyleResolver;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Apply-ansi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 223
    :cond_0
    new-instance v0, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v0}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    .line 224
    invoke-virtual {v0, p1}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u001b["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-virtual {v0, v1}, Lorg/jline/utils/AttributedStringBuilder;->ansiAppend(Ljava/lang/String;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Lorg/jline/utils/AttributedStringBuilder;->style()Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    .line 223
    return-object v0
.end method

.method private applyColor(Lorg/jline/utils/AttributedStyle;Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;
    .locals 10
    .param p1, "style"    # Lorg/jline/utils/AttributedStyle;
    .param p2, "spec"    # Ljava/lang/String;

    .line 321
    sget-object v0, Lorg/jline/utils/StyleResolver;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Apply-color: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 326
    :cond_0
    const-string v1, ":"

    const/4 v2, 0x2

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "parts":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 328
    .local v4, "colorMode":Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v6, v1, v5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 333
    .local v6, "colorName":Ljava/lang/String;
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_1
    goto/16 :goto_0

    :sswitch_0
    const-string v2, "foreground"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "background-rgb"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "f-rgb"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    goto :goto_1

    :sswitch_3
    const-string v2, "b-rgb"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xb

    goto :goto_1

    :sswitch_4
    const-string v2, "fg"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    goto :goto_1

    :sswitch_5
    const-string v2, "bg"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_6
    const-string v3, "f"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :sswitch_7
    const-string v2, "b"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_8
    const-string v2, "foreground-rgb"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_9
    const-string v2, "fg-rgb"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x7

    goto :goto_1

    :sswitch_a
    const-string v2, "background"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_b
    const-string v2, "bg-rgb"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xa

    goto :goto_1

    :goto_0
    move v2, v8

    :goto_1
    const-string v3, "Invalid color-name: "

    packed-switch v2, :pswitch_data_0

    .line 375
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid color-mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 367
    :pswitch_0
    invoke-static {v6}, Lorg/jline/utils/StyleResolver;->colorRgb(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 368
    .local v2, "color":Ljava/lang/Integer;
    if-nez v2, :cond_2

    .line 369
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 370
    goto/16 :goto_6

    .line 372
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/jline/utils/AttributedStyle;->backgroundRgb(I)Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lorg/jline/utils/AttributedStyle;->backgroundDefault()Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    :goto_2
    return-object v0

    .line 357
    .end local v2    # "color":Ljava/lang/Integer;
    :pswitch_1
    invoke-static {v6}, Lorg/jline/utils/StyleResolver;->colorRgb(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 358
    .restart local v2    # "color":Ljava/lang/Integer;
    if-nez v2, :cond_4

    .line 359
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 360
    goto/16 :goto_6

    .line 362
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/jline/utils/AttributedStyle;->foregroundRgb(I)Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Lorg/jline/utils/AttributedStyle;->foregroundDefault()Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    :goto_3
    return-object v0

    .line 347
    .end local v2    # "color":Ljava/lang/Integer;
    :pswitch_2
    invoke-static {v6}, Lorg/jline/utils/StyleResolver;->color(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 348
    .restart local v2    # "color":Ljava/lang/Integer;
    if-nez v2, :cond_6

    .line 349
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 350
    goto :goto_6

    .line 352
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_7

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/jline/utils/AttributedStyle;->background(I)Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Lorg/jline/utils/AttributedStyle;->backgroundDefault()Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    :goto_4
    return-object v0

    .line 337
    .end local v2    # "color":Ljava/lang/Integer;
    :pswitch_3
    invoke-static {v6}, Lorg/jline/utils/StyleResolver;->color(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 338
    .restart local v2    # "color":Ljava/lang/Integer;
    if-nez v2, :cond_8

    .line 339
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 340
    goto :goto_6

    .line 342
    :cond_8
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_9

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/jline/utils/AttributedStyle;->foreground(I)Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    goto :goto_5

    :cond_9
    invoke-virtual {p1}, Lorg/jline/utils/AttributedStyle;->foregroundDefault()Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    :goto_5
    return-object v0

    .line 377
    .end local v2    # "color":Ljava/lang/Integer;
    :goto_6
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x530370bb -> :sswitch_b
        -0x4f67aad2 -> :sswitch_a
        -0x4c300e3f -> :sswitch_9
        -0x224dc2bd -> :sswitch_8
        0x62 -> :sswitch_7
        0x66 -> :sswitch_6
        0xc45 -> :sswitch_5
        0xcc1 -> :sswitch_4
        0x57b2ce2 -> :sswitch_3
        0x5b38ae6 -> :sswitch_2
        0x55043bae -> :sswitch_1
        0x76486943 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private applyNamed(Lorg/jline/utils/AttributedStyle;Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;
    .locals 4
    .param p1, "style"    # Lorg/jline/utils/AttributedStyle;
    .param p2, "name"    # Ljava/lang/String;

    .line 263
    sget-object v0, Lorg/jline/utils/StyleResolver;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Apply-named: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 269
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    goto/16 :goto_0

    :sswitch_0
    const-string v3, "inverse"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x6

    goto/16 :goto_0

    :sswitch_1
    const-string v3, "inverseneg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v3, "default"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    goto/16 :goto_0

    :sswitch_3
    const-string v3, "conceal"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x9

    goto :goto_0

    :sswitch_4
    const-string v3, "crossedout"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0xb

    goto :goto_0

    :sswitch_5
    const-string v3, "faint"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_6
    const-string v3, "blink"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_7
    const-string v3, "bold"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_8
    const-string v3, "crossed-out"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0xa

    goto :goto_0

    :sswitch_9
    const-string v3, "underline"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_a
    const-string v3, "italic"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_b
    const-string v3, "hidden"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0xc

    goto :goto_0

    :sswitch_c
    const-string v3, "inverse-neg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x7

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 307
    return-object p1

    .line 303
    :pswitch_0
    invoke-virtual {p1}, Lorg/jline/utils/AttributedStyle;->hidden()Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    return-object v0

    .line 300
    :pswitch_1
    invoke-virtual {p1}, Lorg/jline/utils/AttributedStyle;->crossedOut()Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    return-object v0

    .line 296
    :pswitch_2
    invoke-virtual {p1}, Lorg/jline/utils/AttributedStyle;->conceal()Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    return-object v0

    .line 293
    :pswitch_3
    invoke-virtual {p1}, Lorg/jline/utils/AttributedStyle;->inverseNeg()Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    return-object v0

    .line 289
    :pswitch_4
    invoke-virtual {p1}, Lorg/jline/utils/AttributedStyle;->inverse()Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    return-object v0

    .line 286
    :pswitch_5
    invoke-virtual {p1}, Lorg/jline/utils/AttributedStyle;->blink()Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    return-object v0

    .line 283
    :pswitch_6
    invoke-virtual {p1}, Lorg/jline/utils/AttributedStyle;->underline()Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    return-object v0

    .line 280
    :pswitch_7
    invoke-virtual {p1}, Lorg/jline/utils/AttributedStyle;->italic()Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    return-object v0

    .line 277
    :pswitch_8
    invoke-virtual {p1}, Lorg/jline/utils/AttributedStyle;->faint()Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    return-object v0

    .line 274
    :pswitch_9
    invoke-virtual {p1}, Lorg/jline/utils/AttributedStyle;->bold()Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    return-object v0

    .line 271
    :pswitch_a
    sget-object v0, Lorg/jline/utils/AttributedStyle;->DEFAULT:Lorg/jline/utils/AttributedStyle;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x4ad91e8d -> :sswitch_c
        -0x48916256 -> :sswitch_b
        -0x4642c5d0 -> :sswitch_a
        -0x3d363934 -> :sswitch_9
        -0x39a9cea0 -> :sswitch_8
        0x2e3a85 -> :sswitch_7
        0x597af5c -> :sswitch_6
        0x5cb0d54 -> :sswitch_5
        0x16eafa0f -> :sswitch_4
        0x38af788f -> :sswitch_3
        0x5c13d641 -> :sswitch_2
        0x7133c060 -> :sswitch_1
        0x74d1db30 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private applyReference(Lorg/jline/utils/AttributedStyle;Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;
    .locals 3
    .param p1, "style"    # Lorg/jline/utils/AttributedStyle;
    .param p2, "spec"    # Ljava/lang/String;

    .line 237
    sget-object v0, Lorg/jline/utils/StyleResolver;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Apply-reference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 241
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid style-reference; missing discriminator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lorg/jline/utils/StyleResolver;->source:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 246
    .local v1, "resolvedSpec":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 247
    invoke-direct {p0, p1, v1}, Lorg/jline/utils/StyleResolver;->apply(Lorg/jline/utils/AttributedStyle;Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v2

    return-object v2

    .line 252
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "resolvedSpec":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object p1
.end method

.method private static color(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 8
    .param p0, "name"    # Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    .line 80
    .local v0, "flags":I
    const-string v1, "default"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 81
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 84
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x21

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x1

    if-ne v3, v4, :cond_1

    .line 85
    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 86
    const/16 v0, 0x8

    goto :goto_0

    .line 87
    :cond_1
    const-string v3, "bright-"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 88
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 89
    const/16 v0, 0x8

    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x7e

    if-ne v3, v4, :cond_3

    .line 91
    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 93
    :try_start_0
    invoke-static {p0}, Lorg/jline/utils/Colors;->rgbColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lorg/jline/utils/StyleResolver;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid style-color name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 96
    return-object v5

    .line 100
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_4
    goto/16 :goto_1

    :sswitch_0
    const-string v1, "magenta"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0xa

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "white"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0xe

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "green"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    goto/16 :goto_1

    :sswitch_3
    const-string v3, "black"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v2, v1

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "cyan"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0xc

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "blue"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x8

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "red"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_7
    const-string v1, "y"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v2, v6

    goto :goto_1

    :sswitch_8
    const-string v1, "w"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0xf

    goto :goto_1

    :sswitch_9
    const-string v1, "r"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_a
    const-string v1, "m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0xb

    goto :goto_1

    :sswitch_b
    const-string v1, "k"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v2, v7

    goto :goto_1

    :sswitch_c
    const-string v1, "g"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_d
    const-string v1, "c"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0xd

    goto :goto_1

    :sswitch_e
    const-string v1, "b"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x9

    goto :goto_1

    :sswitch_f
    const-string v1, "yellow"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x6

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 134
    return-object v5

    .line 131
    :pswitch_0
    add-int/lit8 v1, v0, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 127
    :pswitch_1
    add-int/lit8 v1, v0, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 123
    :pswitch_2
    add-int/lit8 v1, v0, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 119
    :pswitch_3
    add-int/lit8 v1, v0, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 115
    :pswitch_4
    add-int/lit8 v1, v0, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 111
    :pswitch_5
    add-int/lit8 v1, v0, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 107
    :pswitch_6
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 103
    :pswitch_7
    add-int/lit8 v1, v0, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x2bc39b8c -> :sswitch_f
        0x62 -> :sswitch_e
        0x63 -> :sswitch_d
        0x67 -> :sswitch_c
        0x6b -> :sswitch_b
        0x6d -> :sswitch_a
        0x72 -> :sswitch_9
        0x77 -> :sswitch_8
        0x79 -> :sswitch_7
        0x1b891 -> :sswitch_6
        0x2e305a -> :sswitch_5
        0x2ed323 -> :sswitch_4
        0x5978fff -> :sswitch_3
        0x5e0cf03 -> :sswitch_2
        0x6bdcc29 -> :sswitch_1
        0x316858a9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static colorRgb(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .line 48
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x78

    if-eq v1, v2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    invoke-static {p0}, Lorg/jline/utils/StyleResolver;->color(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 60
    .local v0, "color":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 61
    sget-object v1, Lorg/jline/utils/Colors;->DEFAULT_COLORS_256:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 63
    :cond_1
    return-object v0

    .line 52
    .end local v0    # "color":Ljava/lang/Integer;
    :cond_2
    :goto_0
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v1, Lorg/jline/utils/StyleResolver;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid hexadecimal color: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 55
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public resolve(Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;
    .locals 4
    .param p1, "spec"    # Ljava/lang/String;

    .line 148
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lorg/jline/utils/StyleResolver;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resolve: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 154
    :cond_0
    const-string v0, ":-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 155
    .local v1, "i":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 156
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "parts":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/jline/utils/StyleResolver;->resolve(Ljava/lang/String;Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v2

    return-object v2

    .line 160
    .end local v0    # "parts":[Ljava/lang/String;
    :cond_1
    sget-object v0, Lorg/jline/utils/AttributedStyle;->DEFAULT:Lorg/jline/utils/AttributedStyle;

    invoke-direct {p0, v0, p1}, Lorg/jline/utils/StyleResolver;->apply(Lorg/jline/utils/AttributedStyle;Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Ljava/lang/String;Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;
    .locals 3
    .param p1, "spec"    # Ljava/lang/String;
    .param p2, "defaultSpec"    # Ljava/lang/String;

    .line 173
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lorg/jline/utils/StyleResolver;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v2, "Resolve: %s; default: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 179
    :cond_0
    sget-object v0, Lorg/jline/utils/AttributedStyle;->DEFAULT:Lorg/jline/utils/AttributedStyle;

    invoke-direct {p0, v0, p1}, Lorg/jline/utils/StyleResolver;->apply(Lorg/jline/utils/AttributedStyle;Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    .line 180
    .local v0, "style":Lorg/jline/utils/AttributedStyle;
    sget-object v1, Lorg/jline/utils/AttributedStyle;->DEFAULT:Lorg/jline/utils/AttributedStyle;

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_1

    .line 181
    invoke-direct {p0, v0, p2}, Lorg/jline/utils/StyleResolver;->apply(Lorg/jline/utils/AttributedStyle;Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    .line 183
    :cond_1
    return-object v0
.end method
