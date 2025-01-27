.class public interface abstract Lorg/apache/sshd/server/command/CommandFactory;
.super Ljava/lang/Object;
.source "CommandFactory.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static split(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "command"    # Ljava/lang/String;
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

    .line 55
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->length(Ljava/lang/CharSequence;)I

    move-result v0

    .line 56
    .local v0, "len":I
    if-gtz v0, :cond_0

    .line 57
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 60
    :cond_0
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 61
    .local v2, "curPos":I
    if-gez v2, :cond_1

    .line 62
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 65
    :cond_1
    const/4 v3, 0x0

    .line 66
    .local v3, "lastPos":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v4, "elements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_a

    .line 68
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 70
    .local v5, "ch":C
    const/16 v6, 0x27

    if-eq v5, v6, :cond_2

    const/16 v6, 0x22

    if-ne v5, v6, :cond_5

    :cond_2
    add-int/lit8 v6, v0, -0x1

    if-ge v2, v6, :cond_5

    if-eqz v2, :cond_3

    add-int/lit8 v6, v2, -0x1

    .line 74
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v1, :cond_5

    .line 76
    :cond_3
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 77
    .local v6, "nextPos":I
    if-gt v6, v2, :cond_4

    .line 78
    goto :goto_4

    .line 81
    :cond_4
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 82
    .local v7, "elem":Ljava/lang/String;
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    move v2, v6

    .line 85
    .end local v6    # "nextPos":I
    .end local v7    # "elem":Ljava/lang/String;
    goto :goto_1

    :cond_5
    if-eq v5, v1, :cond_6

    .line 86
    goto :goto_4

    .line 88
    :cond_6
    if-ge v3, v2, :cond_7

    .line 89
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 90
    .local v6, "elem":Ljava/lang/String;
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    .end local v6    # "elem":Ljava/lang/String;
    :cond_7
    :goto_1
    nop

    :goto_2
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v0, :cond_9

    .line 96
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 97
    if-eq v5, v1, :cond_8

    .line 98
    goto :goto_3

    .line 95
    :cond_8
    goto :goto_2

    .line 102
    :cond_9
    :goto_3
    move v3, v2

    .line 103
    add-int/lit8 v2, v2, -0x1

    .line 67
    .end local v5    # "ch":C
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    :cond_a
    if-ge v3, v0, :cond_b

    .line 108
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "elem":Ljava/lang/String;
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    .end local v1    # "elem":Ljava/lang/String;
    :cond_b
    return-object v4
.end method


# virtual methods
.method public abstract createCommand(Lorg/apache/sshd/server/channel/ChannelSession;Ljava/lang/String;)Lorg/apache/sshd/server/command/Command;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
