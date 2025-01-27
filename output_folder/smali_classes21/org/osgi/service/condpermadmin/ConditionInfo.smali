.class public Lorg/osgi/service/condpermadmin/ConditionInfo;
.super Ljava/lang/Object;
.source "ConditionInfo.java"


# instance fields
.field private final args:[Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 9
    .param p1, "encodedCondition"    # Ljava/lang/String;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    if-eqz p1, :cond_d

    .line 86
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_c

    .line 90
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 91
    .local v0, "encoded":[C
    array-length v1, v0

    .line 92
    .local v1, "length":I
    const/4 v2, 0x0

    .line 95
    .local v2, "pos":I
    :goto_0
    aget-char v3, v0, v2

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    :cond_0
    aget-char v3, v0, v2

    const/16 v4, 0x5b

    if-ne v3, v4, :cond_b

    .line 103
    add-int/lit8 v2, v2, 0x1

    .line 106
    :goto_1
    aget-char v3, v0, v2

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 111
    :cond_1
    move v3, v2

    .line 112
    .local v3, "begin":I
    :goto_2
    aget-char v4, v0, v2

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    const/16 v5, 0x5d

    if-nez v4, :cond_2

    aget-char v4, v0, v2

    if-eq v4, v5, :cond_2

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 115
    :cond_2
    if-eq v2, v3, :cond_a

    aget-char v4, v0, v3

    const/16 v6, 0x22

    if-eq v4, v6, :cond_a

    .line 118
    new-instance v4, Ljava/lang/String;

    sub-int v7, v2, v3

    invoke-direct {v4, v0, v3, v7}, Ljava/lang/String;-><init>([CII)V

    iput-object v4, p0, Lorg/osgi/service/condpermadmin/ConditionInfo;->type:Ljava/lang/String;

    .line 121
    :goto_3
    aget-char v4, v0, v2

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 122
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 126
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v4, "argsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    aget-char v7, v0, v2

    if-ne v7, v6, :cond_7

    .line 128
    add-int/lit8 v2, v2, 0x1

    .line 129
    move v3, v2

    .line 130
    :goto_4
    aget-char v7, v0, v2

    if-eq v7, v6, :cond_6

    .line 131
    aget-char v7, v0, v2

    const/16 v8, 0x5c

    if-ne v7, v8, :cond_5

    .line 132
    add-int/lit8 v2, v2, 0x1

    .line 134
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 136
    :cond_6
    invoke-static {v0, v3, v2}, Lorg/osgi/service/condpermadmin/ConditionInfo;->unescapeString([CII)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    add-int/lit8 v2, v2, 0x1

    .line 139
    aget-char v7, v0, v2

    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 141
    :goto_5
    aget-char v7, v0, v2

    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 146
    :cond_7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    iput-object v6, p0, Lorg/osgi/service/condpermadmin/ConditionInfo;->args:[Ljava/lang/String;

    .line 149
    aget-char v6, v0, v2

    .line 150
    .local v6, "c":C
    add-int/lit8 v2, v2, 0x1

    .line 151
    :goto_6
    if-ge v2, v1, :cond_8

    aget-char v7, v0, v2

    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 152
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 154
    :cond_8
    if-ne v6, v5, :cond_9

    if-ne v2, v1, :cond_9

    .line 159
    .end local v0    # "encoded":[C
    .end local v1    # "length":I
    .end local v2    # "pos":I
    .end local v3    # "begin":I
    .end local v4    # "argsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "c":C
    nop

    .line 160
    return-void

    .line 155
    .restart local v0    # "encoded":[C
    .restart local v1    # "length":I
    .restart local v2    # "pos":I
    .restart local v3    # "begin":I
    .restart local v4    # "argsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "c":C
    :cond_9
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v7, "expecting close bracket"

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "encodedCondition":Ljava/lang/String;
    throw v5

    .line 116
    .end local v4    # "argsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "c":C
    .restart local p1    # "encodedCondition":Ljava/lang/String;
    :cond_a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "expecting type"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "encodedCondition":Ljava/lang/String;
    throw v4

    .line 101
    .end local v3    # "begin":I
    .restart local p1    # "encodedCondition":Ljava/lang/String;
    :cond_b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "expecting open bracket"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "encodedCondition":Ljava/lang/String;
    throw v3
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .end local v0    # "encoded":[C
    .end local v1    # "length":I
    .end local v2    # "pos":I
    .restart local p1    # "encodedCondition":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "parsing terminated abruptly"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "empty encoded condition"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "missing encoded condition"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/osgi/service/condpermadmin/ConditionInfo;->type:Ljava/lang/String;

    .line 66
    if-eqz p2, :cond_0

    invoke-virtual {p2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lorg/osgi/service/condpermadmin/ConditionInfo;->args:[Ljava/lang/String;

    .line 67
    if-eqz p1, :cond_1

    .line 70
    return-void

    .line 68
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static escapeString(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "output"    # Ljava/lang/StringBuffer;

    .line 287
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 288
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 289
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 290
    .local v2, "c":C
    sparse-switch v2, :sswitch_data_0

    .line 303
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 293
    :sswitch_0
    const/16 v3, 0x5c

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 294
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 295
    goto :goto_1

    .line 297
    :sswitch_1
    const-string v3, "\\r"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 298
    goto :goto_1

    .line 300
    :sswitch_2
    const-string v3, "\\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 301
    nop

    .line 288
    .end local v2    # "c":C
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 307
    .end local v1    # "i":I
    :cond_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xd -> :sswitch_1
        0x22 -> :sswitch_0
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method private static unescapeString([CII)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # [C
    .param p1, "begin"    # I
    .param p2, "end"    # I

    .line 313
    new-instance v0, Ljava/lang/StringBuffer;

    sub-int v1, p2, p1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 314
    .local v0, "output":Ljava/lang/StringBuffer;
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 315
    aget-char v2, p0, v1

    .line 316
    .local v2, "c":C
    const/16 v3, 0x5c

    if-ne v2, v3, :cond_0

    .line 317
    add-int/lit8 v1, v1, 0x1

    .line 318
    if-ge v1, p2, :cond_0

    .line 319
    aget-char v2, p0, v1

    .line 320
    sparse-switch v2, :sswitch_data_0

    .line 331
    const/16 v2, 0x5c

    .line 332
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 325
    :sswitch_0
    const/16 v2, 0xd

    .line 326
    goto :goto_1

    .line 328
    :sswitch_1
    const/16 v2, 0xa

    .line 329
    nop

    .line 337
    :cond_0
    :goto_1
    :sswitch_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 314
    .end local v2    # "c":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 340
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_2
        0x5c -> :sswitch_2
        0x6e -> :sswitch_1
        0x72 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 248
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 249
    return v0

    .line 252
    :cond_0
    instance-of v1, p1, Lorg/osgi/service/condpermadmin/ConditionInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 253
    return v2

    .line 256
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/osgi/service/condpermadmin/ConditionInfo;

    .line 258
    .local v1, "other":Lorg/osgi/service/condpermadmin/ConditionInfo;
    iget-object v3, p0, Lorg/osgi/service/condpermadmin/ConditionInfo;->type:Ljava/lang/String;

    iget-object v4, v1, Lorg/osgi/service/condpermadmin/ConditionInfo;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/osgi/service/condpermadmin/ConditionInfo;->args:[Ljava/lang/String;

    array-length v3, v3

    iget-object v4, v1, Lorg/osgi/service/condpermadmin/ConditionInfo;->args:[Ljava/lang/String;

    array-length v4, v4

    if-eq v3, v4, :cond_2

    goto :goto_1

    .line 261
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lorg/osgi/service/condpermadmin/ConditionInfo;->args:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_4

    .line 262
    aget-object v4, v4, v3

    iget-object v5, v1, Lorg/osgi/service/condpermadmin/ConditionInfo;->args:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 263
    return v2

    .line 261
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 265
    .end local v3    # "i":I
    :cond_4
    return v0

    .line 259
    :cond_5
    :goto_1
    return v2
.end method

.method public final getArgs()[Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lorg/osgi/service/condpermadmin/ConditionInfo;->args:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public final getEncoded()Ljava/lang/String;
    .locals 3

    .line 186
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 187
    .local v0, "output":Ljava/lang/StringBuffer;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 188
    iget-object v1, p0, Lorg/osgi/service/condpermadmin/ConditionInfo;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/osgi/service/condpermadmin/ConditionInfo;->args:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 191
    const-string v2, " \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    iget-object v2, p0, Lorg/osgi/service/condpermadmin/ConditionInfo;->args:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2, v0}, Lorg/osgi/service/condpermadmin/ConditionInfo;->escapeString(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 193
    const/16 v2, 0x22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    .end local v1    # "i":I
    :cond_0
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Lorg/osgi/service/condpermadmin/ConditionInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 275
    iget-object v0, p0, Lorg/osgi/service/condpermadmin/ConditionInfo;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 276
    .local v0, "h":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/osgi/service/condpermadmin/ConditionInfo;->args:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 277
    mul-int/lit8 v3, v0, 0x1f

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v3, v2

    .line 276
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 210
    invoke-virtual {p0}, Lorg/osgi/service/condpermadmin/ConditionInfo;->getEncoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
