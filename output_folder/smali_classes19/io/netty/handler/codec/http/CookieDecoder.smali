.class public final Lio/netty/handler/codec/http/CookieDecoder;
.super Ljava/lang/Object;
.source "CookieDecoder.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final COMMENT:Ljava/lang/String; = "Comment"

.field private static final COMMENTURL:Ljava/lang/String; = "CommentURL"

.field private static final DISCARD:Ljava/lang/String; = "Discard"

.field private static final LAX:Lio/netty/handler/codec/http/CookieDecoder;

.field private static final PORT:Ljava/lang/String; = "Port"

.field private static final STRICT:Lio/netty/handler/codec/http/CookieDecoder;

.field private static final VERSION:Ljava/lang/String; = "Version"


# instance fields
.field private final logger:Lio/netty/util/internal/logging/InternalLogger;

.field private final strict:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    new-instance v0, Lio/netty/handler/codec/http/CookieDecoder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/CookieDecoder;-><init>(Z)V

    sput-object v0, Lio/netty/handler/codec/http/CookieDecoder;->STRICT:Lio/netty/handler/codec/http/CookieDecoder;

    .line 57
    new-instance v0, Lio/netty/handler/codec/http/CookieDecoder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/CookieDecoder;-><init>(Z)V

    sput-object v0, Lio/netty/handler/codec/http/CookieDecoder;->LAX:Lio/netty/handler/codec/http/CookieDecoder;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "strict"    # Z

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/CookieDecoder;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 325
    iput-boolean p1, p0, Lio/netty/handler/codec/http/CookieDecoder;->strict:Z

    .line 326
    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .param p0, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lio/netty/handler/codec/http/Cookie;",
            ">;"
        }
    .end annotation

    .line 72
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lio/netty/handler/codec/http/CookieDecoder;->decode(Ljava/lang/String;Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;Z)Ljava/util/Set;
    .locals 1
    .param p0, "header"    # Ljava/lang/String;
    .param p1, "strict"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Set<",
            "Lio/netty/handler/codec/http/Cookie;",
            ">;"
        }
    .end annotation

    .line 76
    if-eqz p1, :cond_0

    sget-object v0, Lio/netty/handler/codec/http/CookieDecoder;->STRICT:Lio/netty/handler/codec/http/CookieDecoder;

    goto :goto_0

    :cond_0
    sget-object v0, Lio/netty/handler/codec/http/CookieDecoder;->LAX:Lio/netty/handler/codec/http/CookieDecoder;

    :goto_0
    invoke-direct {v0, p0}, Lio/netty/handler/codec/http/CookieDecoder;->doDecode(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private doDecode(Ljava/lang/String;)Ljava/util/Set;
    .locals 35
    .param p1, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lio/netty/handler/codec/http/Cookie;",
            ">;"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v0

    .line 86
    .local v2, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v0

    .line 87
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v3, p1

    invoke-static {v3, v2, v1}, Lio/netty/handler/codec/http/CookieDecoder;->extractKeyValuePairs(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 89
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 94
    :cond_0
    const/4 v4, 0x0

    .line 98
    .local v4, "version":I
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v6, "Version"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    :try_start_0
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v4    # "version":I
    .local v0, "version":I
    move v4, v0

    goto :goto_0

    .line 101
    .end local v0    # "version":I
    .restart local v4    # "version":I
    :catch_0
    move-exception v0

    .line 104
    :goto_0
    const/4 v0, 0x1

    .local v0, "i":I
    goto :goto_1

    .line 106
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .line 109
    .restart local v0    # "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-gt v7, v0, :cond_2

    .line 111
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v5

    return-object v5

    .line 114
    :cond_2
    new-instance v7, Ljava/util/TreeSet;

    invoke-direct {v7}, Ljava/util/TreeSet;-><init>()V

    .line 115
    .local v7, "cookies":Ljava/util/Set;, "Ljava/util/Set<Lio/netty/handler/codec/http/Cookie;>;"
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_16

    .line 116
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 117
    .local v8, "name":Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 118
    .local v9, "value":Ljava/lang/String;
    if-nez v9, :cond_3

    .line 119
    const-string v9, ""

    .line 122
    :cond_3
    move-object/from16 v10, p0

    invoke-direct {v10, v8, v9}, Lio/netty/handler/codec/http/CookieDecoder;->initCookie(Ljava/lang/String;Ljava/lang/String;)Lio/netty/handler/codec/http/DefaultCookie;

    move-result-object v11

    .line 124
    .local v11, "c":Lio/netty/handler/codec/http/Cookie;
    if-nez v11, :cond_4

    .line 125
    move-object/from16 v22, v1

    move-object v1, v7

    goto/16 :goto_c

    .line 128
    :cond_4
    const/4 v12, 0x0

    .line 129
    .local v12, "discard":Z
    const/4 v13, 0x0

    .line 130
    .local v13, "secure":Z
    const/4 v14, 0x0

    .line 131
    .local v14, "httpOnly":Z
    const/4 v15, 0x0

    .line 132
    .local v15, "comment":Ljava/lang/String;
    const/16 v16, 0x0

    .line 133
    .local v16, "commentURL":Ljava/lang/String;
    const/16 v17, 0x0

    .line 134
    .local v17, "domain":Ljava/lang/String;
    const/16 v18, 0x0

    .line 135
    .local v18, "path":Ljava/lang/String;
    const-wide/high16 v19, -0x8000000000000000L

    .line 136
    .local v19, "maxAge":J
    new-instance v5, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v5

    .line 138
    .local v3, "ports":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    add-int/lit8 v5, v0, 0x1

    move-object/from16 v10, v17

    move-object/from16 v17, v7

    move-object/from16 v7, v18

    move/from16 v18, v14

    move/from16 v31, v4

    move v4, v0

    move-object v0, v8

    move v8, v5

    move/from16 v5, v31

    move-object/from16 v32, v16

    move-object/from16 v16, v9

    move-object/from16 v9, v32

    move-wide/from16 v33, v19

    move-object/from16 v19, v15

    move-wide/from16 v14, v33

    .end local v15    # "comment":Ljava/lang/String;
    .local v0, "name":Ljava/lang/String;
    .local v4, "i":I
    .local v5, "version":I
    .local v7, "path":Ljava/lang/String;
    .local v8, "j":I
    .local v9, "commentURL":Ljava/lang/String;
    .local v10, "domain":Ljava/lang/String;
    .local v14, "maxAge":J
    .local v16, "value":Ljava/lang/String;
    .local v17, "cookies":Ljava/util/Set;, "Ljava/util/Set<Lio/netty/handler/codec/http/Cookie;>;"
    .local v18, "httpOnly":Z
    .local v19, "comment":Ljava/lang/String;
    :goto_3
    move-object/from16 v20, v0

    .end local v0    # "name":Ljava/lang/String;
    .local v20, "name":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v21, v12

    .end local v12    # "discard":Z
    .local v21, "discard":Z
    if-ge v8, v0, :cond_13

    .line 139
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/lang/String;

    .line 140
    .end local v20    # "name":Ljava/lang/String;
    .local v12, "name":Ljava/lang/String;
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v1

    .end local v1    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v22, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 142
    .end local v16    # "value":Ljava/lang/String;
    .local v1, "value":Ljava/lang/String;
    const-string v0, "Discard"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 143
    const/4 v0, 0x1

    move/from16 v21, v0

    move-object/from16 v16, v1

    .end local v21    # "discard":Z
    .local v0, "discard":Z
    goto/16 :goto_8

    .line 144
    .end local v0    # "discard":Z
    .restart local v21    # "discard":Z
    :cond_5
    const-string v0, "Secure"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 145
    const/4 v0, 0x1

    move v13, v0

    move-object/from16 v16, v1

    .end local v13    # "secure":Z
    .local v0, "secure":Z
    goto/16 :goto_8

    .line 146
    .end local v0    # "secure":Z
    .restart local v13    # "secure":Z
    :cond_6
    const-string v0, "HTTPOnly"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 147
    const/4 v0, 0x1

    move/from16 v18, v0

    move-object/from16 v16, v1

    .end local v18    # "httpOnly":Z
    .local v0, "httpOnly":Z
    goto/16 :goto_8

    .line 148
    .end local v0    # "httpOnly":Z
    .restart local v18    # "httpOnly":Z
    :cond_7
    const-string v0, "Comment"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 149
    move-object v0, v1

    move-object/from16 v19, v0

    move-object/from16 v16, v1

    .end local v19    # "comment":Ljava/lang/String;
    .local v0, "comment":Ljava/lang/String;
    goto/16 :goto_8

    .line 150
    .end local v0    # "comment":Ljava/lang/String;
    .restart local v19    # "comment":Ljava/lang/String;
    :cond_8
    const-string v0, "CommentURL"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 151
    move-object v0, v1

    move-object v9, v0

    move-object/from16 v16, v1

    .end local v9    # "commentURL":Ljava/lang/String;
    .local v0, "commentURL":Ljava/lang/String;
    goto/16 :goto_8

    .line 152
    .end local v0    # "commentURL":Ljava/lang/String;
    .restart local v9    # "commentURL":Ljava/lang/String;
    :cond_9
    const-string v0, "Domain"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 153
    move-object v0, v1

    move-object v10, v0

    move-object/from16 v16, v1

    .end local v10    # "domain":Ljava/lang/String;
    .local v0, "domain":Ljava/lang/String;
    goto/16 :goto_8

    .line 154
    .end local v0    # "domain":Ljava/lang/String;
    .restart local v10    # "domain":Ljava/lang/String;
    :cond_a
    const-string v0, "Path"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 155
    move-object v0, v1

    move-object v7, v0

    move-object/from16 v16, v1

    .end local v7    # "path":Ljava/lang/String;
    .local v0, "path":Ljava/lang/String;
    goto/16 :goto_8

    .line 156
    .end local v0    # "path":Ljava/lang/String;
    .restart local v7    # "path":Ljava/lang/String;
    :cond_b
    const-string v0, "Expires"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 157
    invoke-static {v1}, Lio/netty/handler/codec/DateFormatter;->parseHttpDate(Ljava/lang/CharSequence;)Ljava/util/Date;

    move-result-object v0

    .line 158
    .local v0, "date":Ljava/util/Date;
    if-eqz v0, :cond_d

    .line 159
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v23

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    sub-long v23, v23, v25

    .line 160
    .local v23, "maxAgeMillis":J
    const-wide/16 v25, 0x3e8

    div-long v27, v23, v25

    rem-long v25, v23, v25

    const-wide/16 v29, 0x0

    cmp-long v16, v25, v29

    if-eqz v16, :cond_c

    move-object/from16 v16, v0

    const/4 v0, 0x1

    goto :goto_4

    :cond_c
    move-object/from16 v16, v0

    const/4 v0, 0x0

    .end local v0    # "date":Ljava/util/Date;
    .local v16, "date":Ljava/util/Date;
    :goto_4
    move-object/from16 v25, v9

    move-object/from16 v26, v10

    .end local v9    # "commentURL":Ljava/lang/String;
    .end local v10    # "domain":Ljava/lang/String;
    .local v25, "commentURL":Ljava/lang/String;
    .local v26, "domain":Ljava/lang/String;
    int-to-long v9, v0

    add-long v14, v27, v9

    goto :goto_5

    .line 158
    .end local v16    # "date":Ljava/util/Date;
    .end local v23    # "maxAgeMillis":J
    .end local v25    # "commentURL":Ljava/lang/String;
    .end local v26    # "domain":Ljava/lang/String;
    .restart local v0    # "date":Ljava/util/Date;
    .restart local v9    # "commentURL":Ljava/lang/String;
    .restart local v10    # "domain":Ljava/lang/String;
    :cond_d
    move-object/from16 v16, v0

    move-object/from16 v25, v9

    move-object/from16 v26, v10

    .line 162
    .end local v0    # "date":Ljava/util/Date;
    .end local v9    # "commentURL":Ljava/lang/String;
    .end local v10    # "domain":Ljava/lang/String;
    .restart local v25    # "commentURL":Ljava/lang/String;
    .restart local v26    # "domain":Ljava/lang/String;
    :goto_5
    move-object/from16 v16, v1

    move-object/from16 v9, v25

    move-object/from16 v10, v26

    goto :goto_8

    .end local v25    # "commentURL":Ljava/lang/String;
    .end local v26    # "domain":Ljava/lang/String;
    .restart local v9    # "commentURL":Ljava/lang/String;
    .restart local v10    # "domain":Ljava/lang/String;
    :cond_e
    move-object/from16 v25, v9

    move-object/from16 v26, v10

    .end local v9    # "commentURL":Ljava/lang/String;
    .end local v10    # "domain":Ljava/lang/String;
    .restart local v25    # "commentURL":Ljava/lang/String;
    .restart local v26    # "domain":Ljava/lang/String;
    const-string v0, "Max-Age"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 163
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v9, v0

    move-object/from16 v16, v1

    move-wide v14, v9

    move-object/from16 v9, v25

    move-object/from16 v10, v26

    .end local v14    # "maxAge":J
    .local v9, "maxAge":J
    goto :goto_8

    .line 164
    .end local v9    # "maxAge":J
    .restart local v14    # "maxAge":J
    :cond_f
    invoke-virtual {v6, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 165
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v16, v1

    move-object/from16 v9, v25

    move-object/from16 v10, v26

    goto :goto_8

    .line 166
    :cond_10
    const-string v0, "Port"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 167
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 168
    .local v9, "portList":[Ljava/lang/String;
    array-length v10, v9

    move-object/from16 v16, v1

    const/4 v1, 0x0

    .end local v1    # "value":Ljava/lang/String;
    .local v16, "value":Ljava/lang/String;
    :goto_6
    if-ge v1, v10, :cond_11

    aget-object v20, v9, v1

    .line 170
    .local v20, "s1":Ljava/lang/String;
    :try_start_1
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 173
    goto :goto_7

    .line 171
    :catch_1
    move-exception v0

    .line 168
    .end local v20    # "s1":Ljava/lang/String;
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_11
    move-object/from16 v9, v25

    move-object/from16 v10, v26

    .line 138
    .end local v25    # "commentURL":Ljava/lang/String;
    .end local v26    # "domain":Ljava/lang/String;
    .local v9, "commentURL":Ljava/lang/String;
    .restart local v10    # "domain":Ljava/lang/String;
    :goto_8
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object v0, v12

    move/from16 v12, v21

    move-object/from16 v1, v22

    goto/16 :goto_3

    .line 166
    .end local v9    # "commentURL":Ljava/lang/String;
    .end local v10    # "domain":Ljava/lang/String;
    .end local v16    # "value":Ljava/lang/String;
    .restart local v1    # "value":Ljava/lang/String;
    .restart local v25    # "commentURL":Ljava/lang/String;
    .restart local v26    # "domain":Ljava/lang/String;
    :cond_12
    move-object/from16 v16, v1

    .end local v1    # "value":Ljava/lang/String;
    .restart local v16    # "value":Ljava/lang/String;
    move-object v0, v12

    move-object/from16 v9, v16

    goto :goto_9

    .line 138
    .end local v12    # "name":Ljava/lang/String;
    .end local v22    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "commentURL":Ljava/lang/String;
    .end local v26    # "domain":Ljava/lang/String;
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "commentURL":Ljava/lang/String;
    .restart local v10    # "domain":Ljava/lang/String;
    .local v20, "name":Ljava/lang/String;
    :cond_13
    move-object/from16 v22, v1

    move-object/from16 v25, v9

    move-object/from16 v26, v10

    .end local v1    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "commentURL":Ljava/lang/String;
    .end local v10    # "domain":Ljava/lang/String;
    .restart local v22    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "commentURL":Ljava/lang/String;
    .restart local v26    # "domain":Ljava/lang/String;
    move-object/from16 v9, v16

    move-object/from16 v0, v20

    .line 180
    .end local v8    # "j":I
    .end local v16    # "value":Ljava/lang/String;
    .end local v20    # "name":Ljava/lang/String;
    .local v0, "name":Ljava/lang/String;
    .local v9, "value":Ljava/lang/String;
    :goto_9
    invoke-interface {v11, v5}, Lio/netty/handler/codec/http/Cookie;->setVersion(I)V

    .line 181
    invoke-interface {v11, v14, v15}, Lio/netty/handler/codec/http/Cookie;->setMaxAge(J)V

    .line 182
    invoke-interface {v11, v7}, Lio/netty/handler/codec/http/Cookie;->setPath(Ljava/lang/String;)V

    .line 183
    move-object/from16 v10, v26

    .end local v26    # "domain":Ljava/lang/String;
    .restart local v10    # "domain":Ljava/lang/String;
    invoke-interface {v11, v10}, Lio/netty/handler/codec/http/Cookie;->setDomain(Ljava/lang/String;)V

    .line 184
    invoke-interface {v11, v13}, Lio/netty/handler/codec/http/Cookie;->setSecure(Z)V

    .line 185
    move/from16 v1, v18

    .end local v18    # "httpOnly":Z
    .local v1, "httpOnly":Z
    invoke-interface {v11, v1}, Lio/netty/handler/codec/http/Cookie;->setHttpOnly(Z)V

    .line 186
    if-lez v5, :cond_14

    .line 187
    move-object/from16 v8, v19

    .end local v19    # "comment":Ljava/lang/String;
    .local v8, "comment":Ljava/lang/String;
    invoke-interface {v11, v8}, Lio/netty/handler/codec/http/Cookie;->setComment(Ljava/lang/String;)V

    goto :goto_a

    .line 186
    .end local v8    # "comment":Ljava/lang/String;
    .restart local v19    # "comment":Ljava/lang/String;
    :cond_14
    move-object/from16 v8, v19

    .line 189
    .end local v19    # "comment":Ljava/lang/String;
    .restart local v8    # "comment":Ljava/lang/String;
    :goto_a
    const/4 v12, 0x1

    if-le v5, v12, :cond_15

    .line 190
    move-object/from16 v12, v25

    .end local v25    # "commentURL":Ljava/lang/String;
    .local v12, "commentURL":Ljava/lang/String;
    invoke-interface {v11, v12}, Lio/netty/handler/codec/http/Cookie;->setCommentUrl(Ljava/lang/String;)V

    .line 191
    invoke-interface {v11, v3}, Lio/netty/handler/codec/http/Cookie;->setPorts(Ljava/lang/Iterable;)V

    .line 192
    move/from16 v16, v1

    move/from16 v1, v21

    .end local v21    # "discard":Z
    .local v1, "discard":Z
    .local v16, "httpOnly":Z
    invoke-interface {v11, v1}, Lio/netty/handler/codec/http/Cookie;->setDiscard(Z)V

    goto :goto_b

    .line 189
    .end local v12    # "commentURL":Ljava/lang/String;
    .end local v16    # "httpOnly":Z
    .local v1, "httpOnly":Z
    .restart local v21    # "discard":Z
    .restart local v25    # "commentURL":Ljava/lang/String;
    :cond_15
    move/from16 v16, v1

    move/from16 v1, v21

    move-object/from16 v12, v25

    .line 195
    .end local v21    # "discard":Z
    .end local v25    # "commentURL":Ljava/lang/String;
    .local v1, "discard":Z
    .restart local v12    # "commentURL":Ljava/lang/String;
    .restart local v16    # "httpOnly":Z
    :goto_b
    move/from16 v21, v1

    move-object/from16 v1, v17

    .end local v17    # "cookies":Ljava/util/Set;, "Ljava/util/Set<Lio/netty/handler/codec/http/Cookie;>;"
    .local v1, "cookies":Ljava/util/Set;, "Ljava/util/Set<Lio/netty/handler/codec/http/Cookie;>;"
    .restart local v21    # "discard":Z
    invoke-interface {v1, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    .end local v0    # "name":Ljava/lang/String;
    .end local v3    # "ports":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "path":Ljava/lang/String;
    .end local v8    # "comment":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    .end local v10    # "domain":Ljava/lang/String;
    .end local v11    # "c":Lio/netty/handler/codec/http/Cookie;
    .end local v12    # "commentURL":Ljava/lang/String;
    .end local v13    # "secure":Z
    .end local v14    # "maxAge":J
    .end local v16    # "httpOnly":Z
    .end local v21    # "discard":Z
    add-int/lit8 v0, v4, 0x1

    move-object/from16 v3, p1

    move-object v7, v1

    move v4, v5

    move-object/from16 v1, v22

    const/4 v5, 0x0

    .end local v4    # "i":I
    .local v0, "i":I
    goto/16 :goto_2

    .end local v5    # "version":I
    .end local v22    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v4, "version":I
    .local v7, "cookies":Ljava/util/Set;, "Ljava/util/Set<Lio/netty/handler/codec/http/Cookie;>;"
    :cond_16
    move-object/from16 v22, v1

    move-object v1, v7

    .line 198
    .end local v7    # "cookies":Ljava/util/Set;, "Ljava/util/Set<Lio/netty/handler/codec/http/Cookie;>;"
    .local v1, "cookies":Ljava/util/Set;, "Ljava/util/Set<Lio/netty/handler/codec/http/Cookie;>;"
    .restart local v22    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_c
    return-object v1
.end method

.method private static extractKeyValuePairs(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .param p0, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 203
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 204
    .local v0, "headerLen":I
    const/4 v1, 0x0

    .line 208
    .local v1, "i":I
    :goto_0
    if-ne v1, v0, :cond_0

    .line 209
    goto :goto_2

    .line 211
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 217
    goto :goto_1

    .line 214
    :sswitch_0
    add-int/lit8 v1, v1, 0x1

    .line 215
    goto :goto_0

    .line 222
    :goto_1
    if-ne v1, v0, :cond_1

    .line 223
    nop

    .line 322
    .end local v1    # "i":I
    :goto_2
    return-void

    .line 225
    .restart local v1    # "i":I
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x24

    if-ne v2, v3, :cond_2

    .line 226
    add-int/lit8 v1, v1, 0x1

    .line 227
    goto :goto_1

    .line 235
    :cond_2
    if-ne v1, v0, :cond_3

    .line 236
    const/4 v2, 0x0

    .line 237
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "value":Ljava/lang/String;
    goto/16 :goto_8

    .line 239
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_3
    move v2, v1

    .line 241
    .local v2, "newNameStart":I
    :goto_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 307
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    .line 310
    if-ne v1, v0, :cond_c

    .line 312
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 313
    .local v3, "name":Ljava/lang/String;
    const/4 v4, 0x0

    .line 314
    .local v4, "value":Ljava/lang/String;
    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_8

    .line 249
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 250
    .restart local v3    # "name":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 251
    if-ne v1, v0, :cond_4

    .line 253
    const-string v4, ""

    .line 254
    .restart local v4    # "value":Ljava/lang/String;
    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_8

    .line 257
    .end local v4    # "value":Ljava/lang/String;
    :cond_4
    move v4, v1

    .line 258
    .local v4, "newValueStart":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 259
    .local v5, "c":C
    const/16 v6, 0x22

    if-eq v5, v6, :cond_7

    const/16 v6, 0x27

    if-ne v5, v6, :cond_5

    goto :goto_5

    .line 296
    :cond_5
    const/16 v6, 0x3b

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 297
    .local v6, "semiPos":I
    if-lez v6, :cond_6

    .line 298
    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 299
    .local v7, "value":Ljava/lang/String;
    move v1, v6

    goto :goto_4

    .line 301
    .end local v7    # "value":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 302
    .restart local v7    # "value":Ljava/lang/String;
    move v1, v0

    .line 305
    .end local v6    # "semiPos":I
    :goto_4
    move-object v2, v3

    move-object v3, v7

    goto :goto_8

    .line 261
    .end local v7    # "value":Ljava/lang/String;
    :cond_7
    :goto_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v1

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 262
    .local v6, "newValueBuf":Ljava/lang/StringBuilder;
    move v7, v5

    .line 263
    .local v7, "q":C
    const/4 v8, 0x0

    .line 264
    .local v8, "hadBackslash":Z
    add-int/lit8 v1, v1, 0x1

    .line 266
    :goto_6
    if-ne v1, v0, :cond_8

    .line 267
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 268
    .local v9, "value":Ljava/lang/String;
    move-object v2, v3

    move-object v3, v9

    goto :goto_8

    .line 270
    .end local v9    # "value":Ljava/lang/String;
    :cond_8
    if-eqz v8, :cond_9

    .line 271
    const/4 v8, 0x0

    .line 272
    add-int/lit8 v9, v1, 0x1

    .end local v1    # "i":I
    .local v9, "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 273
    sparse-switch v5, :sswitch_data_1

    .line 280
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 276
    :sswitch_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v6, v1, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 277
    nop

    .line 266
    :goto_7
    move v1, v9

    goto :goto_6

    .line 283
    .end local v9    # "i":I
    .restart local v1    # "i":I
    :cond_9
    add-int/lit8 v9, v1, 0x1

    .end local v1    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 284
    if-ne v5, v7, :cond_a

    .line 285
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, "value":Ljava/lang/String;
    move-object v2, v3

    move-object v3, v1

    move v1, v9

    goto :goto_8

    .line 288
    .end local v1    # "value":Ljava/lang/String;
    :cond_a
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 289
    const/16 v1, 0x5c

    if-ne v5, v1, :cond_b

    .line 290
    const/4 v8, 0x1

    move v1, v9

    goto :goto_6

    .line 289
    :cond_b
    move v1, v9

    goto :goto_6

    .line 244
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "newValueStart":I
    .end local v5    # "c":C
    .end local v6    # "newValueBuf":Ljava/lang/StringBuilder;
    .end local v7    # "q":C
    .end local v8    # "hadBackslash":Z
    .end local v9    # "i":I
    .local v1, "i":I
    :pswitch_2
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 245
    .restart local v3    # "name":Ljava/lang/String;
    const/4 v4, 0x0

    .line 246
    .local v4, "value":Ljava/lang/String;
    move-object v2, v3

    move-object v3, v4

    .line 319
    .end local v4    # "value":Ljava/lang/String;
    .local v2, "name":Ljava/lang/String;
    .local v3, "value":Ljava/lang/String;
    :goto_8
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    goto/16 :goto_0

    .line 310
    .local v2, "newNameStart":I
    :cond_c
    goto/16 :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x3b
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x22 -> :sswitch_1
        0x27 -> :sswitch_1
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method private initCookie(Ljava/lang/String;Ljava/lang/String;)Lio/netty/handler/codec/http/DefaultCookie;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 329
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 334
    :cond_0
    if-nez p2, :cond_1

    .line 335
    iget-object v1, p0, Lio/netty/handler/codec/http/CookieDecoder;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Skipping cookie with null value"

    invoke-interface {v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 336
    return-object v0

    .line 339
    :cond_1
    invoke-static {p2}, Lio/netty/handler/codec/http/CookieUtil;->unwrapValue(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 340
    .local v1, "unwrappedValue":Ljava/lang/CharSequence;
    if-nez v1, :cond_2

    .line 341
    iget-object v2, p0, Lio/netty/handler/codec/http/CookieDecoder;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "Skipping cookie because starting quotes are not properly balanced in \'{}\'"

    invoke-interface {v2, v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 343
    return-object v0

    .line 347
    :cond_2
    iget-boolean v2, p0, Lio/netty/handler/codec/http/CookieDecoder;->strict:Z

    if-eqz v2, :cond_4

    invoke-static {p1}, Lio/netty/handler/codec/http/CookieUtil;->firstInvalidCookieNameOctet(Ljava/lang/CharSequence;)I

    move-result v2

    move v3, v2

    .local v3, "invalidOctetPos":I
    if-ltz v2, :cond_4

    .line 348
    iget-object v2, p0, Lio/netty/handler/codec/http/CookieDecoder;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v2}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 349
    iget-object v2, p0, Lio/netty/handler/codec/http/CookieDecoder;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 350
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    .line 349
    const-string v5, "Skipping cookie because name \'{}\' contains invalid char \'{}\'"

    invoke-interface {v2, v5, p1, v4}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 352
    :cond_3
    return-object v0

    .line 355
    .end local v3    # "invalidOctetPos":I
    :cond_4
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_5

    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    .line 357
    .local v2, "wrap":Z
    :goto_0
    iget-boolean v3, p0, Lio/netty/handler/codec/http/CookieDecoder;->strict:Z

    if-eqz v3, :cond_7

    invoke-static {v1}, Lio/netty/handler/codec/http/CookieUtil;->firstInvalidCookieValueOctet(Ljava/lang/CharSequence;)I

    move-result v3

    move v4, v3

    .local v4, "invalidOctetPos":I
    if-ltz v3, :cond_7

    .line 358
    iget-object v3, p0, Lio/netty/handler/codec/http/CookieDecoder;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v3}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 359
    iget-object v3, p0, Lio/netty/handler/codec/http/CookieDecoder;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 360
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    .line 359
    const-string v6, "Skipping cookie because value \'{}\' contains invalid char \'{}\'"

    invoke-interface {v3, v6, v1, v5}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 362
    :cond_6
    return-object v0

    .line 365
    .end local v4    # "invalidOctetPos":I
    :cond_7
    new-instance v0, Lio/netty/handler/codec/http/DefaultCookie;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p1, v3}, Lio/netty/handler/codec/http/DefaultCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    .local v0, "cookie":Lio/netty/handler/codec/http/DefaultCookie;
    invoke-virtual {v0, v2}, Lio/netty/handler/codec/http/DefaultCookie;->setWrap(Z)V

    .line 367
    return-object v0

    .line 330
    .end local v0    # "cookie":Lio/netty/handler/codec/http/DefaultCookie;
    .end local v1    # "unwrappedValue":Ljava/lang/CharSequence;
    .end local v2    # "wrap":Z
    :cond_8
    :goto_1
    iget-object v1, p0, Lio/netty/handler/codec/http/CookieDecoder;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Skipping cookie with null name"

    invoke-interface {v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 331
    return-object v0
.end method
