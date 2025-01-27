.class public Lorg/osgi/service/permissionadmin/PermissionInfo;
.super Ljava/lang/Object;
.source "PermissionInfo.java"


# instance fields
.field private final actions:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 11
    .param p1, "encodedPermission"    # Ljava/lang/String;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    if-eqz p1, :cond_f

    .line 93
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_e

    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "parsedType":Ljava/lang/String;
    const/4 v1, 0x0

    .line 98
    .local v1, "parsedName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 100
    .local v2, "parsedActions":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 101
    .local v3, "encoded":[C
    array-length v4, v3

    .line 102
    .local v4, "length":I
    const/4 v5, 0x0

    .line 105
    .local v5, "pos":I
    :goto_0
    aget-char v6, v3, v5

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 106
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 110
    :cond_0
    aget-char v6, v3, v5

    const/16 v7, 0x28

    if-ne v6, v7, :cond_d

    .line 113
    add-int/lit8 v5, v5, 0x1

    .line 116
    :goto_1
    aget-char v6, v3, v5

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 117
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 121
    :cond_1
    move v6, v5

    .line 122
    .local v6, "begin":I
    :goto_2
    aget-char v7, v3, v5

    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    const/16 v8, 0x29

    if-nez v7, :cond_2

    aget-char v7, v3, v5

    if-eq v7, v8, :cond_2

    .line 123
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 125
    :cond_2
    if-eq v5, v6, :cond_c

    aget-char v7, v3, v6

    const/16 v9, 0x22

    if-eq v7, v9, :cond_c

    .line 128
    new-instance v7, Ljava/lang/String;

    sub-int v10, v5, v6

    invoke-direct {v7, v3, v6, v10}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v7

    .line 131
    :goto_3
    aget-char v7, v3, v5

    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 132
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 136
    :cond_3
    aget-char v7, v3, v5

    if-ne v7, v9, :cond_9

    .line 137
    add-int/lit8 v5, v5, 0x1

    .line 138
    move v6, v5

    .line 139
    :goto_4
    aget-char v7, v3, v5

    const/16 v10, 0x5c

    if-eq v7, v9, :cond_5

    .line 140
    aget-char v7, v3, v5

    if-ne v7, v10, :cond_4

    .line 141
    add-int/lit8 v5, v5, 0x1

    .line 143
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 145
    :cond_5
    invoke-static {v3, v6, v5}, Lorg/osgi/service/permissionadmin/PermissionInfo;->unescapeString([CII)Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    .line 146
    add-int/lit8 v5, v5, 0x1

    .line 148
    aget-char v7, v3, v5

    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 150
    :goto_5
    aget-char v7, v3, v5

    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 151
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 158
    :cond_6
    aget-char v7, v3, v5

    if-ne v7, v9, :cond_9

    .line 159
    add-int/lit8 v5, v5, 0x1

    .line 160
    move v6, v5

    .line 161
    :goto_6
    aget-char v7, v3, v5

    if-eq v7, v9, :cond_8

    .line 162
    aget-char v7, v3, v5

    if-ne v7, v10, :cond_7

    .line 163
    add-int/lit8 v5, v5, 0x1

    .line 165
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 167
    :cond_8
    invoke-static {v3, v6, v5}, Lorg/osgi/service/permissionadmin/PermissionInfo;->unescapeString([CII)Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 168
    add-int/lit8 v5, v5, 0x1

    .line 171
    :goto_7
    aget-char v7, v3, v5

    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 172
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 179
    :cond_9
    aget-char v7, v3, v5

    .line 180
    .local v7, "c":C
    add-int/lit8 v5, v5, 0x1

    .line 181
    :goto_8
    if-ge v5, v4, :cond_a

    aget-char v9, v3, v5

    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v9, :cond_a

    .line 182
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 184
    :cond_a
    if-ne v7, v8, :cond_b

    if-ne v5, v4, :cond_b

    .line 189
    .end local v3    # "encoded":[C
    .end local v4    # "length":I
    .end local v5    # "pos":I
    .end local v6    # "begin":I
    .end local v7    # "c":C
    nop

    .line 191
    iput-object v0, p0, Lorg/osgi/service/permissionadmin/PermissionInfo;->type:Ljava/lang/String;

    .line 192
    iput-object v1, p0, Lorg/osgi/service/permissionadmin/PermissionInfo;->name:Ljava/lang/String;

    .line 193
    iput-object v2, p0, Lorg/osgi/service/permissionadmin/PermissionInfo;->actions:Ljava/lang/String;

    .line 194
    return-void

    .line 185
    .restart local v3    # "encoded":[C
    .restart local v4    # "length":I
    .restart local v5    # "pos":I
    .restart local v6    # "begin":I
    .restart local v7    # "c":C
    :cond_b
    :try_start_1
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "expecting close parenthesis"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "parsedType":Ljava/lang/String;
    .end local v1    # "parsedName":Ljava/lang/String;
    .end local v2    # "parsedActions":Ljava/lang/String;
    .end local p1    # "encodedPermission":Ljava/lang/String;
    throw v8

    .line 126
    .end local v7    # "c":C
    .restart local v0    # "parsedType":Ljava/lang/String;
    .restart local v1    # "parsedName":Ljava/lang/String;
    .restart local v2    # "parsedActions":Ljava/lang/String;
    .restart local p1    # "encodedPermission":Ljava/lang/String;
    :cond_c
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "expecting type"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "parsedType":Ljava/lang/String;
    .end local v1    # "parsedName":Ljava/lang/String;
    .end local v2    # "parsedActions":Ljava/lang/String;
    .end local p1    # "encodedPermission":Ljava/lang/String;
    throw v7

    .line 111
    .end local v6    # "begin":I
    .restart local v0    # "parsedType":Ljava/lang/String;
    .restart local v1    # "parsedName":Ljava/lang/String;
    .restart local v2    # "parsedActions":Ljava/lang/String;
    .restart local p1    # "encodedPermission":Ljava/lang/String;
    :cond_d
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "expecting open parenthesis"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "parsedType":Ljava/lang/String;
    .end local v1    # "parsedName":Ljava/lang/String;
    .end local v2    # "parsedActions":Ljava/lang/String;
    .end local p1    # "encodedPermission":Ljava/lang/String;
    throw v6
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 187
    .end local v3    # "encoded":[C
    .end local v4    # "length":I
    .end local v5    # "pos":I
    .restart local v0    # "parsedType":Ljava/lang/String;
    .restart local v1    # "parsedName":Ljava/lang/String;
    .restart local v2    # "parsedActions":Ljava/lang/String;
    .restart local p1    # "encodedPermission":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 188
    .local v3, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "parsing terminated abruptly"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 94
    .end local v0    # "parsedType":Ljava/lang/String;
    .end local v1    # "parsedName":Ljava/lang/String;
    .end local v2    # "parsedActions":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "empty encoded permission"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "missing encoded permission"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "actions"    # Ljava/lang/String;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/osgi/service/permissionadmin/PermissionInfo;->type:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lorg/osgi/service/permissionadmin/PermissionInfo;->name:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lorg/osgi/service/permissionadmin/PermissionInfo;->actions:Ljava/lang/String;

    .line 70
    if-eqz p1, :cond_2

    .line 73
    if-nez p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_1
    :goto_0
    return-void

    .line 71
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static escapeString(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "output"    # Ljava/lang/StringBuffer;

    .line 353
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 354
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 355
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 356
    .local v2, "c":C
    sparse-switch v2, :sswitch_data_0

    .line 369
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 359
    :sswitch_0
    const/16 v3, 0x5c

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 360
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 361
    goto :goto_1

    .line 363
    :sswitch_1
    const-string v3, "\\r"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 364
    goto :goto_1

    .line 366
    :sswitch_2
    const-string v3, "\\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    nop

    .line 354
    .end local v2    # "c":C
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 373
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

    .line 379
    new-instance v0, Ljava/lang/StringBuffer;

    sub-int v1, p2, p1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 380
    .local v0, "output":Ljava/lang/StringBuffer;
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 381
    aget-char v2, p0, v1

    .line 382
    .local v2, "c":C
    const/16 v3, 0x5c

    if-ne v2, v3, :cond_0

    .line 383
    add-int/lit8 v1, v1, 0x1

    .line 384
    if-ge v1, p2, :cond_0

    .line 385
    aget-char v2, p0, v1

    .line 386
    sparse-switch v2, :sswitch_data_0

    .line 397
    const/16 v2, 0x5c

    .line 398
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 391
    :sswitch_0
    const/16 v2, 0xd

    .line 392
    goto :goto_1

    .line 394
    :sswitch_1
    const/16 v2, 0xa

    .line 395
    nop

    .line 403
    :cond_0
    :goto_1
    :sswitch_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 380
    .end local v2    # "c":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 406
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
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 310
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 311
    return v0

    .line 313
    :cond_0
    instance-of v1, p1, Lorg/osgi/service/permissionadmin/PermissionInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 314
    return v2

    .line 316
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/osgi/service/permissionadmin/PermissionInfo;

    .line 317
    .local v1, "other":Lorg/osgi/service/permissionadmin/PermissionInfo;
    iget-object v3, p0, Lorg/osgi/service/permissionadmin/PermissionInfo;->type:Ljava/lang/String;

    iget-object v4, v1, Lorg/osgi/service/permissionadmin/PermissionInfo;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lorg/osgi/service/permissionadmin/PermissionInfo;->name:Ljava/lang/String;

    if-nez v3, :cond_2

    move v4, v0

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_0
    iget-object v5, v1, Lorg/osgi/service/permissionadmin/PermissionInfo;->name:Ljava/lang/String;

    if-nez v5, :cond_3

    move v6, v0

    goto :goto_1

    :cond_3
    move v6, v2

    :goto_1
    xor-int/2addr v4, v6

    if-nez v4, :cond_a

    iget-object v4, p0, Lorg/osgi/service/permissionadmin/PermissionInfo;->actions:Ljava/lang/String;

    if-nez v4, :cond_4

    move v6, v0

    goto :goto_2

    :cond_4
    move v6, v2

    :goto_2
    iget-object v7, v1, Lorg/osgi/service/permissionadmin/PermissionInfo;->actions:Ljava/lang/String;

    if-nez v7, :cond_5

    move v7, v0

    goto :goto_3

    :cond_5
    move v7, v2

    :goto_3
    xor-int/2addr v6, v7

    if-eqz v6, :cond_6

    goto :goto_5

    .line 320
    :cond_6
    if-eqz v3, :cond_9

    .line 321
    if-eqz v4, :cond_8

    .line 322
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lorg/osgi/service/permissionadmin/PermissionInfo;->actions:Ljava/lang/String;

    iget-object v4, v1, Lorg/osgi/service/permissionadmin/PermissionInfo;->actions:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    move v0, v2

    :goto_4
    return v0

    .line 324
    :cond_8
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 327
    :cond_9
    return v0

    .line 318
    :cond_a
    :goto_5
    return v2
.end method

.method public final getActions()Ljava/lang/String;
    .locals 1

    .line 293
    iget-object v0, p0, Lorg/osgi/service/permissionadmin/PermissionInfo;->actions:Ljava/lang/String;

    return-object v0
.end method

.method public final getEncoded()Ljava/lang/String;
    .locals 5

    .line 233
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/osgi/service/permissionadmin/PermissionInfo;->type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lorg/osgi/service/permissionadmin/PermissionInfo;->name:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    iget-object v4, p0, Lorg/osgi/service/permissionadmin/PermissionInfo;->actions:Ljava/lang/String;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 234
    .local v0, "output":Ljava/lang/StringBuffer;
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 235
    iget-object v1, p0, Lorg/osgi/service/permissionadmin/PermissionInfo;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    iget-object v1, p0, Lorg/osgi/service/permissionadmin/PermissionInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 237
    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 238
    iget-object v1, p0, Lorg/osgi/service/permissionadmin/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/osgi/service/permissionadmin/PermissionInfo;->escapeString(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 239
    iget-object v1, p0, Lorg/osgi/service/permissionadmin/PermissionInfo;->actions:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 240
    const-string v1, "\" \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    iget-object v1, p0, Lorg/osgi/service/permissionadmin/PermissionInfo;->actions:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/osgi/service/permissionadmin/PermissionInfo;->escapeString(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 243
    :cond_2
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 245
    :cond_3
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 246
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 281
    iget-object v0, p0, Lorg/osgi/service/permissionadmin/PermissionInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 269
    iget-object v0, p0, Lorg/osgi/service/permissionadmin/PermissionInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 338
    iget-object v0, p0, Lorg/osgi/service/permissionadmin/PermissionInfo;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 339
    .local v0, "h":I
    iget-object v1, p0, Lorg/osgi/service/permissionadmin/PermissionInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 340
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int v0, v2, v1

    .line 341
    iget-object v1, p0, Lorg/osgi/service/permissionadmin/PermissionInfo;->actions:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 342
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int v0, v2, v1

    .line 345
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 258
    invoke-virtual {p0}, Lorg/osgi/service/permissionadmin/PermissionInfo;->getEncoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
