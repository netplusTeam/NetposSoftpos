.class public Lorg/osgi/framework/VersionRange;
.super Ljava/lang/Object;
.source "VersionRange.java"


# static fields
.field private static final ENDPOINT_DELIMITER:Ljava/lang/String; = ","

.field public static final LEFT_CLOSED:C = '['

.field private static final LEFT_CLOSED_DELIMITER:Ljava/lang/String; = "["

.field private static final LEFT_DELIMITERS:Ljava/lang/String; = "[("

.field public static final LEFT_OPEN:C = '('

.field private static final LEFT_OPEN_DELIMITER:Ljava/lang/String; = "("

.field public static final RIGHT_CLOSED:C = ']'

.field private static final RIGHT_CLOSED_DELIMITER:Ljava/lang/String; = "]"

.field private static final RIGHT_DELIMITERS:Ljava/lang/String; = ")]"

.field public static final RIGHT_OPEN:C = ')'

.field private static final RIGHT_OPEN_DELIMITER:Ljava/lang/String; = ")"


# instance fields
.field private final empty:Z

.field private transient hash:I

.field private final left:Lorg/osgi/framework/Version;

.field private final leftClosed:Z

.field private final right:Lorg/osgi/framework/Version;

.field private final rightClosed:Z

.field private transient versionRangeString:Ljava/lang/String;


# direct methods
.method public constructor <init>(CLorg/osgi/framework/Version;Lorg/osgi/framework/Version;C)V
    .locals 4
    .param p1, "leftType"    # C
    .param p2, "leftEndpoint"    # Lorg/osgi/framework/Version;
    .param p3, "rightEndpoint"    # Lorg/osgi/framework/Version;
    .param p4, "rightType"    # C

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const-string v0, "\""

    const/16 v1, 0x5b

    if-eq p1, v1, :cond_1

    const/16 v2, 0x28

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid leftType \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_1
    :goto_0
    const/16 v2, 0x29

    const/16 v3, 0x5d

    if-eq p4, v2, :cond_3

    if-ne p4, v3, :cond_2

    goto :goto_1

    .line 98
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid rightType \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 100
    :cond_3
    :goto_1
    if-eqz p2, :cond_6

    .line 103
    const/4 v0, 0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_4

    move v1, v0

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lorg/osgi/framework/VersionRange;->leftClosed:Z

    .line 104
    if-ne p4, v3, :cond_5

    goto :goto_3

    :cond_5
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lorg/osgi/framework/VersionRange;->rightClosed:Z

    .line 105
    iput-object p2, p0, Lorg/osgi/framework/VersionRange;->left:Lorg/osgi/framework/Version;

    .line 106
    iput-object p3, p0, Lorg/osgi/framework/VersionRange;->right:Lorg/osgi/framework/Version;

    .line 107
    invoke-direct {p0}, Lorg/osgi/framework/VersionRange;->isEmpty0()Z

    move-result v0

    iput-boolean v0, p0, Lorg/osgi/framework/VersionRange;->empty:Z

    .line 108
    return-void

    .line 101
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null leftEndpoint argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 11
    .param p1, "range"    # Ljava/lang/String;

    const-string v0, "\": invalid format"

    const-string v1, "invalid range \""

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, "[("

    const/4 v6, 0x1

    invoke-direct {v4, p1, v5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 138
    .local v4, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 139
    .local v5, "token":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_0

    .line 140
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 142
    :cond_0
    const-string v7, "["

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_4

    .line 143
    .local v7, "closedLeft":Z
    if-nez v7, :cond_2

    :try_start_1
    const-string v8, "("

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 145
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-nez v8, :cond_1

    .line 148
    iput-boolean v6, p0, Lorg/osgi/framework/VersionRange;->leftClosed:Z

    .line 149
    iput-boolean v3, p0, Lorg/osgi/framework/VersionRange;->rightClosed:Z

    .line 150
    invoke-static {v5, p1}, Lorg/osgi/framework/VersionRange;->parseVersion(Ljava/lang/String;Ljava/lang/String;)Lorg/osgi/framework/Version;

    move-result-object v6

    iput-object v6, p0, Lorg/osgi/framework/VersionRange;->left:Lorg/osgi/framework/Version;

    .line 151
    iput-object v2, p0, Lorg/osgi/framework/VersionRange;->right:Lorg/osgi/framework/Version;

    .line 152
    iput-boolean v3, p0, Lorg/osgi/framework/VersionRange;->empty:Z

    .line 153
    return-void

    .line 146
    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v7    # "closedLeft":Z
    .end local p1    # "range":Ljava/lang/String;
    throw v6

    .line 155
    .restart local v7    # "closedLeft":Z
    .restart local p1    # "range":Ljava/lang/String;
    :cond_2
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 156
    .local v6, "version":Ljava/lang/String;
    invoke-static {v6, p1}, Lorg/osgi/framework/VersionRange;->parseVersion(Ljava/lang/String;Ljava/lang/String;)Lorg/osgi/framework/Version;

    move-result-object v8
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_3

    .line 157
    .local v8, "endpointLeft":Lorg/osgi/framework/Version;
    :try_start_2
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 158
    const-string v9, ")]"

    invoke-virtual {v4, v9}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 159
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 160
    const-string v9, "]"

    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_2

    .line 161
    .local v3, "closedRight":Z
    if-nez v3, :cond_4

    :try_start_3
    const-string v9, ")"

    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_0

    .line 162
    :cond_3
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "closedRight":Z
    .end local v7    # "closedLeft":Z
    .end local v8    # "endpointLeft":Lorg/osgi/framework/Version;
    .end local p1    # "range":Ljava/lang/String;
    throw v9

    .line 164
    .restart local v3    # "closedRight":Z
    .restart local v7    # "closedLeft":Z
    .restart local v8    # "endpointLeft":Lorg/osgi/framework/Version;
    .restart local p1    # "range":Ljava/lang/String;
    :cond_4
    :goto_0
    invoke-static {v6, p1}, Lorg/osgi/framework/VersionRange;->parseVersion(Ljava/lang/String;Ljava/lang/String;)Lorg/osgi/framework/Version;

    move-result-object v2
    :try_end_3
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_1

    .line 166
    .local v2, "endpointRight":Lorg/osgi/framework/Version;
    :try_start_4
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 167
    const-string v9, ""

    invoke-virtual {v4, v9}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 168
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_5

    goto :goto_1

    .line 169
    :cond_5
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "endpointRight":Lorg/osgi/framework/Version;
    .end local v3    # "closedRight":Z
    .end local v7    # "closedLeft":Z
    .end local v8    # "endpointLeft":Lorg/osgi/framework/Version;
    .end local p1    # "range":Ljava/lang/String;
    throw v9
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_0

    .line 176
    .end local v4    # "st":Ljava/util/StringTokenizer;
    .end local v5    # "token":Ljava/lang/String;
    .end local v6    # "version":Ljava/lang/String;
    .restart local v2    # "endpointRight":Lorg/osgi/framework/Version;
    .restart local v3    # "closedRight":Z
    .restart local v7    # "closedLeft":Z
    .restart local v8    # "endpointLeft":Lorg/osgi/framework/Version;
    .restart local p1    # "range":Ljava/lang/String;
    :cond_6
    :goto_1
    nop

    .line 178
    iput-boolean v7, p0, Lorg/osgi/framework/VersionRange;->leftClosed:Z

    .line 179
    iput-boolean v3, p0, Lorg/osgi/framework/VersionRange;->rightClosed:Z

    .line 180
    iput-object v8, p0, Lorg/osgi/framework/VersionRange;->left:Lorg/osgi/framework/Version;

    .line 181
    iput-object v2, p0, Lorg/osgi/framework/VersionRange;->right:Lorg/osgi/framework/Version;

    .line 182
    invoke-direct {p0}, Lorg/osgi/framework/VersionRange;->isEmpty0()Z

    move-result v0

    iput-boolean v0, p0, Lorg/osgi/framework/VersionRange;->empty:Z

    .line 183
    return-void

    .line 172
    :catch_0
    move-exception v4

    move v5, v7

    move-object v6, v8

    goto :goto_2

    .end local v2    # "endpointRight":Lorg/osgi/framework/Version;
    :catch_1
    move-exception v4

    move v5, v7

    move-object v6, v8

    .restart local v2    # "endpointRight":Lorg/osgi/framework/Version;
    goto :goto_2

    .end local v2    # "endpointRight":Lorg/osgi/framework/Version;
    .end local v3    # "closedRight":Z
    :catch_2
    move-exception v4

    .restart local v3    # "closedRight":Z
    move v5, v7

    move-object v6, v8

    .restart local v2    # "endpointRight":Lorg/osgi/framework/Version;
    goto :goto_2

    .end local v2    # "endpointRight":Lorg/osgi/framework/Version;
    .end local v3    # "closedRight":Z
    .end local v8    # "endpointLeft":Lorg/osgi/framework/Version;
    :catch_3
    move-exception v4

    move-object v6, v2

    .restart local v3    # "closedRight":Z
    .local v6, "endpointLeft":Lorg/osgi/framework/Version;
    move v5, v7

    .restart local v2    # "endpointRight":Lorg/osgi/framework/Version;
    goto :goto_2

    .end local v2    # "endpointRight":Lorg/osgi/framework/Version;
    .end local v3    # "closedRight":Z
    .end local v6    # "endpointLeft":Lorg/osgi/framework/Version;
    .end local v7    # "closedLeft":Z
    :catch_4
    move-exception v4

    move v5, v3

    .local v5, "closedLeft":Z
    move-object v6, v2

    .line 173
    .restart local v2    # "endpointRight":Lorg/osgi/framework/Version;
    .restart local v3    # "closedRight":Z
    .local v4, "e":Ljava/util/NoSuchElementException;
    .restart local v6    # "endpointLeft":Lorg/osgi/framework/Version;
    :goto_2
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object v0, v7

    .line 174
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0, v4}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 175
    throw v0
.end method

.method private isEmpty0()Z
    .locals 4

    .line 329
    iget-object v0, p0, Lorg/osgi/framework/VersionRange;->right:Lorg/osgi/framework/Version;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 330
    return v1

    .line 332
    :cond_0
    iget-object v2, p0, Lorg/osgi/framework/VersionRange;->left:Lorg/osgi/framework/Version;

    invoke-virtual {v2, v0}, Lorg/osgi/framework/Version;->compareTo(Lorg/osgi/framework/Version;)I

    move-result v0

    .line 333
    .local v0, "comparison":I
    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 334
    iget-boolean v3, p0, Lorg/osgi/framework/VersionRange;->leftClosed:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lorg/osgi/framework/VersionRange;->rightClosed:Z

    if-nez v3, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1

    .line 336
    :cond_3
    if-lez v0, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method private static parseVersion(Ljava/lang/String;Ljava/lang/String;)Lorg/osgi/framework/Version;
    .locals 4
    .param p0, "version"    # Ljava/lang/String;
    .param p1, "range"    # Ljava/lang/String;

    .line 194
    :try_start_0
    invoke-static {p0}, Lorg/osgi/framework/Version;->valueOf(Ljava/lang/String;)Lorg/osgi/framework/Version;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid range \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 197
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1, v0}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 198
    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/osgi/framework/VersionRange;
    .locals 1
    .param p0, "range"    # Ljava/lang/String;

    .line 541
    new-instance v0, Lorg/osgi/framework/VersionRange;

    invoke-direct {v0, p0}, Lorg/osgi/framework/VersionRange;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .line 439
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 440
    return v0

    .line 442
    :cond_0
    instance-of v1, p1, Lorg/osgi/framework/VersionRange;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 443
    return v2

    .line 445
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/osgi/framework/VersionRange;

    .line 446
    .local v1, "other":Lorg/osgi/framework/VersionRange;
    iget-boolean v3, p0, Lorg/osgi/framework/VersionRange;->empty:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v1, Lorg/osgi/framework/VersionRange;->empty:Z

    if-eqz v3, :cond_2

    .line 447
    return v0

    .line 449
    :cond_2
    iget-object v3, p0, Lorg/osgi/framework/VersionRange;->right:Lorg/osgi/framework/Version;

    if-nez v3, :cond_4

    .line 450
    iget-boolean v3, p0, Lorg/osgi/framework/VersionRange;->leftClosed:Z

    iget-boolean v4, v1, Lorg/osgi/framework/VersionRange;->leftClosed:Z

    if-ne v3, v4, :cond_3

    iget-object v3, v1, Lorg/osgi/framework/VersionRange;->right:Lorg/osgi/framework/Version;

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/osgi/framework/VersionRange;->left:Lorg/osgi/framework/Version;

    iget-object v4, v1, Lorg/osgi/framework/VersionRange;->left:Lorg/osgi/framework/Version;

    invoke-virtual {v3, v4}, Lorg/osgi/framework/Version;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    return v0

    .line 452
    :cond_4
    iget-boolean v3, p0, Lorg/osgi/framework/VersionRange;->leftClosed:Z

    iget-boolean v4, v1, Lorg/osgi/framework/VersionRange;->leftClosed:Z

    if-ne v3, v4, :cond_5

    iget-boolean v3, p0, Lorg/osgi/framework/VersionRange;->rightClosed:Z

    iget-boolean v4, v1, Lorg/osgi/framework/VersionRange;->rightClosed:Z

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lorg/osgi/framework/VersionRange;->left:Lorg/osgi/framework/Version;

    iget-object v4, v1, Lorg/osgi/framework/VersionRange;->left:Lorg/osgi/framework/Version;

    invoke-virtual {v3, v4}, Lorg/osgi/framework/Version;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/osgi/framework/VersionRange;->right:Lorg/osgi/framework/Version;

    iget-object v4, v1, Lorg/osgi/framework/VersionRange;->right:Lorg/osgi/framework/Version;

    invoke-virtual {v3, v4}, Lorg/osgi/framework/Version;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v0, v2

    :goto_1
    return v0
.end method

.method public getLeft()Lorg/osgi/framework/Version;
    .locals 1

    .line 208
    iget-object v0, p0, Lorg/osgi/framework/VersionRange;->left:Lorg/osgi/framework/Version;

    return-object v0
.end method

.method public getLeftType()C
    .locals 1

    .line 228
    iget-boolean v0, p0, Lorg/osgi/framework/VersionRange;->leftClosed:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x5b

    goto :goto_0

    :cond_0
    const/16 v0, 0x28

    :goto_0
    return v0
.end method

.method public getRight()Lorg/osgi/framework/Version;
    .locals 1

    .line 218
    iget-object v0, p0, Lorg/osgi/framework/VersionRange;->right:Lorg/osgi/framework/Version;

    return-object v0
.end method

.method public getRightType()C
    .locals 1

    .line 238
    iget-boolean v0, p0, Lorg/osgi/framework/VersionRange;->rightClosed:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x5d

    goto :goto_0

    :cond_0
    const/16 v0, 0x29

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 409
    iget v0, p0, Lorg/osgi/framework/VersionRange;->hash:I

    .line 410
    .local v0, "h":I
    if-eqz v0, :cond_0

    .line 411
    return v0

    .line 413
    :cond_0
    iget-boolean v1, p0, Lorg/osgi/framework/VersionRange;->empty:Z

    const/16 v2, 0x1f

    if-eqz v1, :cond_1

    .line 414
    iput v2, p0, Lorg/osgi/framework/VersionRange;->hash:I

    return v2

    .line 416
    :cond_1
    iget-boolean v1, p0, Lorg/osgi/framework/VersionRange;->leftClosed:Z

    const/4 v3, 0x7

    const/4 v4, 0x5

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v4

    :goto_0
    add-int/2addr v1, v2

    .line 417
    .end local v0    # "h":I
    .local v1, "h":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/osgi/framework/VersionRange;->left:Lorg/osgi/framework/Version;

    invoke-virtual {v2}, Lorg/osgi/framework/Version;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 418
    .end local v1    # "h":I
    .restart local v0    # "h":I
    iget-object v1, p0, Lorg/osgi/framework/VersionRange;->right:Lorg/osgi/framework/Version;

    if-eqz v1, :cond_4

    .line 419
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {v1}, Lorg/osgi/framework/Version;->hashCode()I

    move-result v1

    add-int/2addr v2, v1

    .line 420
    .end local v0    # "h":I
    .local v2, "h":I
    mul-int/lit8 v0, v2, 0x1f

    iget-boolean v1, p0, Lorg/osgi/framework/VersionRange;->rightClosed:Z

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    add-int/2addr v0, v3

    .line 422
    .end local v2    # "h":I
    .restart local v0    # "h":I
    :cond_4
    iput v0, p0, Lorg/osgi/framework/VersionRange;->hash:I

    return v0
.end method

.method public includes(Lorg/osgi/framework/Version;)Z
    .locals 4
    .param p1, "version"    # Lorg/osgi/framework/Version;

    .line 249
    iget-boolean v0, p0, Lorg/osgi/framework/VersionRange;->empty:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 250
    return v1

    .line 252
    :cond_0
    iget-object v0, p0, Lorg/osgi/framework/VersionRange;->left:Lorg/osgi/framework/Version;

    invoke-virtual {v0, p1}, Lorg/osgi/framework/Version;->compareTo(Lorg/osgi/framework/Version;)I

    move-result v0

    iget-boolean v2, p0, Lorg/osgi/framework/VersionRange;->leftClosed:Z

    if-lt v0, v2, :cond_1

    .line 253
    return v1

    .line 255
    :cond_1
    iget-object v0, p0, Lorg/osgi/framework/VersionRange;->right:Lorg/osgi/framework/Version;

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 256
    return v2

    .line 258
    :cond_2
    invoke-virtual {v0, p1}, Lorg/osgi/framework/Version;->compareTo(Lorg/osgi/framework/Version;)I

    move-result v0

    iget-boolean v3, p0, Lorg/osgi/framework/VersionRange;->rightClosed:Z

    xor-int/2addr v3, v2

    if-lt v0, v3, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method public varargs intersection([Lorg/osgi/framework/VersionRange;)Lorg/osgi/framework/VersionRange;
    .locals 12
    .param p1, "ranges"    # [Lorg/osgi/framework/VersionRange;

    .line 271
    if-eqz p1, :cond_b

    array-length v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 275
    :cond_0
    iget-boolean v0, p0, Lorg/osgi/framework/VersionRange;->leftClosed:Z

    .line 276
    .local v0, "closedLeft":Z
    iget-boolean v1, p0, Lorg/osgi/framework/VersionRange;->rightClosed:Z

    .line 277
    .local v1, "closedRight":Z
    iget-object v2, p0, Lorg/osgi/framework/VersionRange;->left:Lorg/osgi/framework/Version;

    .line 278
    .local v2, "endpointLeft":Lorg/osgi/framework/Version;
    iget-object v3, p0, Lorg/osgi/framework/VersionRange;->right:Lorg/osgi/framework/Version;

    .line 280
    .local v3, "endpointRight":Lorg/osgi/framework/Version;
    move-object v4, p1

    .local v4, "arr$":[Lorg/osgi/framework/VersionRange;
    array-length v5, v4

    .local v5, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v5, :cond_8

    aget-object v7, v4, v6

    .line 281
    .local v7, "range":Lorg/osgi/framework/VersionRange;
    iget-object v8, v7, Lorg/osgi/framework/VersionRange;->left:Lorg/osgi/framework/Version;

    invoke-virtual {v2, v8}, Lorg/osgi/framework/Version;->compareTo(Lorg/osgi/framework/Version;)I

    move-result v8

    .line 282
    .local v8, "comparison":I
    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v8, :cond_2

    .line 283
    if-eqz v0, :cond_1

    iget-boolean v11, v7, Lorg/osgi/framework/VersionRange;->leftClosed:Z

    if-eqz v11, :cond_1

    move v11, v10

    goto :goto_1

    :cond_1
    move v11, v9

    :goto_1
    move v0, v11

    goto :goto_2

    .line 285
    :cond_2
    if-gez v8, :cond_3

    .line 286
    iget-object v2, v7, Lorg/osgi/framework/VersionRange;->left:Lorg/osgi/framework/Version;

    .line 287
    iget-boolean v0, v7, Lorg/osgi/framework/VersionRange;->leftClosed:Z

    .line 290
    :cond_3
    :goto_2
    iget-object v11, v7, Lorg/osgi/framework/VersionRange;->right:Lorg/osgi/framework/Version;

    if-eqz v11, :cond_7

    .line 291
    if-nez v3, :cond_4

    .line 292
    iget-object v3, v7, Lorg/osgi/framework/VersionRange;->right:Lorg/osgi/framework/Version;

    .line 293
    iget-boolean v1, v7, Lorg/osgi/framework/VersionRange;->rightClosed:Z

    goto :goto_3

    .line 295
    :cond_4
    invoke-virtual {v3, v11}, Lorg/osgi/framework/Version;->compareTo(Lorg/osgi/framework/Version;)I

    move-result v8

    .line 296
    if-nez v8, :cond_6

    .line 297
    if-eqz v1, :cond_5

    iget-boolean v11, v7, Lorg/osgi/framework/VersionRange;->rightClosed:Z

    if-eqz v11, :cond_5

    move v9, v10

    :cond_5
    move v1, v9

    goto :goto_3

    .line 299
    :cond_6
    if-lez v8, :cond_7

    .line 300
    iget-object v3, v7, Lorg/osgi/framework/VersionRange;->right:Lorg/osgi/framework/Version;

    .line 301
    iget-boolean v1, v7, Lorg/osgi/framework/VersionRange;->rightClosed:Z

    .line 280
    .end local v7    # "range":Lorg/osgi/framework/VersionRange;
    .end local v8    # "comparison":I
    :cond_7
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 308
    .end local v4    # "arr$":[Lorg/osgi/framework/VersionRange;
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    :cond_8
    new-instance v4, Lorg/osgi/framework/VersionRange;

    if-eqz v0, :cond_9

    const/16 v5, 0x5b

    goto :goto_4

    :cond_9
    const/16 v5, 0x28

    :goto_4
    if-eqz v1, :cond_a

    const/16 v6, 0x5d

    goto :goto_5

    :cond_a
    const/16 v6, 0x29

    :goto_5
    invoke-direct {v4, v5, v2, v3, v6}, Lorg/osgi/framework/VersionRange;-><init>(CLorg/osgi/framework/Version;Lorg/osgi/framework/Version;C)V

    return-object v4

    .line 272
    .end local v0    # "closedLeft":Z
    .end local v1    # "closedRight":Z
    .end local v2    # "endpointLeft":Lorg/osgi/framework/Version;
    .end local v3    # "endpointRight":Lorg/osgi/framework/Version;
    :cond_b
    :goto_6
    return-object p0
.end method

.method public isEmpty()Z
    .locals 1

    .line 319
    iget-boolean v0, p0, Lorg/osgi/framework/VersionRange;->empty:Z

    return v0
.end method

.method public isExact()Z
    .locals 9

    .line 346
    iget-boolean v0, p0, Lorg/osgi/framework/VersionRange;->empty:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/osgi/framework/VersionRange;->right:Lorg/osgi/framework/Version;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 349
    :cond_0
    iget-boolean v2, p0, Lorg/osgi/framework/VersionRange;->leftClosed:Z

    const/4 v3, 0x1

    const-string v4, "-"

    if-eqz v2, :cond_3

    .line 350
    iget-boolean v2, p0, Lorg/osgi/framework/VersionRange;->rightClosed:Z

    if-eqz v2, :cond_1

    .line 352
    iget-object v1, p0, Lorg/osgi/framework/VersionRange;->left:Lorg/osgi/framework/Version;

    invoke-virtual {v1, v0}, Lorg/osgi/framework/Version;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 355
    :cond_1
    new-instance v0, Lorg/osgi/framework/Version;

    iget-object v2, p0, Lorg/osgi/framework/VersionRange;->left:Lorg/osgi/framework/Version;

    invoke-virtual {v2}, Lorg/osgi/framework/Version;->getMajor()I

    move-result v2

    iget-object v5, p0, Lorg/osgi/framework/VersionRange;->left:Lorg/osgi/framework/Version;

    invoke-virtual {v5}, Lorg/osgi/framework/Version;->getMinor()I

    move-result v5

    iget-object v6, p0, Lorg/osgi/framework/VersionRange;->left:Lorg/osgi/framework/Version;

    invoke-virtual {v6}, Lorg/osgi/framework/Version;->getMicro()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lorg/osgi/framework/VersionRange;->left:Lorg/osgi/framework/Version;

    invoke-virtual {v8}, Lorg/osgi/framework/Version;->getQualifier()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v5, v6, v4}, Lorg/osgi/framework/Version;-><init>(IIILjava/lang/String;)V

    .line 356
    .local v0, "adjacent1":Lorg/osgi/framework/Version;
    iget-object v2, p0, Lorg/osgi/framework/VersionRange;->right:Lorg/osgi/framework/Version;

    invoke-virtual {v0, v2}, Lorg/osgi/framework/Version;->compareTo(Lorg/osgi/framework/Version;)I

    move-result v2

    if-ltz v2, :cond_2

    move v1, v3

    :cond_2
    return v1

    .line 359
    .end local v0    # "adjacent1":Lorg/osgi/framework/Version;
    :cond_3
    iget-boolean v0, p0, Lorg/osgi/framework/VersionRange;->rightClosed:Z

    if-eqz v0, :cond_4

    .line 361
    new-instance v0, Lorg/osgi/framework/Version;

    iget-object v1, p0, Lorg/osgi/framework/VersionRange;->left:Lorg/osgi/framework/Version;

    invoke-virtual {v1}, Lorg/osgi/framework/Version;->getMajor()I

    move-result v1

    iget-object v2, p0, Lorg/osgi/framework/VersionRange;->left:Lorg/osgi/framework/Version;

    invoke-virtual {v2}, Lorg/osgi/framework/Version;->getMinor()I

    move-result v2

    iget-object v3, p0, Lorg/osgi/framework/VersionRange;->left:Lorg/osgi/framework/Version;

    invoke-virtual {v3}, Lorg/osgi/framework/Version;->getMicro()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/osgi/framework/VersionRange;->left:Lorg/osgi/framework/Version;

    invoke-virtual {v6}, Lorg/osgi/framework/Version;->getQualifier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/osgi/framework/Version;-><init>(IIILjava/lang/String;)V

    .line 362
    .restart local v0    # "adjacent1":Lorg/osgi/framework/Version;
    iget-object v1, p0, Lorg/osgi/framework/VersionRange;->right:Lorg/osgi/framework/Version;

    invoke-virtual {v0, v1}, Lorg/osgi/framework/Version;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 365
    .end local v0    # "adjacent1":Lorg/osgi/framework/Version;
    :cond_4
    new-instance v0, Lorg/osgi/framework/Version;

    iget-object v2, p0, Lorg/osgi/framework/VersionRange;->left:Lorg/osgi/framework/Version;

    invoke-virtual {v2}, Lorg/osgi/framework/Version;->getMajor()I

    move-result v2

    iget-object v4, p0, Lorg/osgi/framework/VersionRange;->left:Lorg/osgi/framework/Version;

    invoke-virtual {v4}, Lorg/osgi/framework/Version;->getMinor()I

    move-result v4

    iget-object v5, p0, Lorg/osgi/framework/VersionRange;->left:Lorg/osgi/framework/Version;

    invoke-virtual {v5}, Lorg/osgi/framework/Version;->getMicro()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lorg/osgi/framework/VersionRange;->left:Lorg/osgi/framework/Version;

    invoke-virtual {v7}, Lorg/osgi/framework/Version;->getQualifier()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v2, v4, v5, v6}, Lorg/osgi/framework/Version;-><init>(IIILjava/lang/String;)V

    .line 366
    .local v0, "adjacent2":Lorg/osgi/framework/Version;
    iget-object v2, p0, Lorg/osgi/framework/VersionRange;->right:Lorg/osgi/framework/Version;

    invoke-virtual {v0, v2}, Lorg/osgi/framework/Version;->compareTo(Lorg/osgi/framework/Version;)I

    move-result v2

    if-ltz v2, :cond_5

    move v1, v3

    :cond_5
    return v1

    .line 347
    .end local v0    # "adjacent2":Lorg/osgi/framework/Version;
    :cond_6
    :goto_0
    return v1
.end method

.method public toFilterString(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "attributeName"    # Ljava/lang/String;

    .line 469
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "\""

    const-string v2, "invalid attributeName \""

    if-eqz v0, :cond_c

    .line 472
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "arr$":[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    const/16 v5, 0x29

    const/16 v6, 0x28

    if-ge v4, v3, :cond_1

    aget-char v7, v0, v4

    .line 473
    .local v7, "ch":C
    const/16 v8, 0x3d

    if-eq v7, v8, :cond_0

    const/16 v8, 0x3e

    if-eq v7, v8, :cond_0

    const/16 v8, 0x3c

    if-eq v7, v8, :cond_0

    const/16 v8, 0x7e

    if-eq v7, v8, :cond_0

    if-eq v7, v6, :cond_0

    if-eq v7, v5, :cond_0

    .line 472
    .end local v7    # "ch":C
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 474
    .restart local v7    # "ch":C
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 478
    .end local v0    # "arr$":[C
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    .end local v7    # "ch":C
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 479
    .local v0, "result":Ljava/lang/StringBuffer;
    iget-boolean v1, p0, Lorg/osgi/framework/VersionRange;->leftClosed:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/osgi/framework/VersionRange;->right:Lorg/osgi/framework/Version;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lorg/osgi/framework/VersionRange;->rightClosed:Z

    if-nez v1, :cond_3

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v2

    .line 480
    .local v1, "needPresence":Z
    :goto_1
    if-nez v1, :cond_4

    iget-object v4, p0, Lorg/osgi/framework/VersionRange;->right:Lorg/osgi/framework/Version;

    if-eqz v4, :cond_5

    :cond_4
    move v2, v3

    .line 481
    .local v2, "multipleTerms":Z
    :cond_5
    if-eqz v2, :cond_6

    .line 482
    const-string v3, "(&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 484
    :cond_6
    if-eqz v1, :cond_7

    .line 485
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 486
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 487
    const-string v3, "=*)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 489
    :cond_7
    iget-boolean v3, p0, Lorg/osgi/framework/VersionRange;->leftClosed:Z

    const-string v4, ">="

    const-string v7, "))"

    const-string v8, "<="

    const-string v9, "(!("

    if-eqz v3, :cond_8

    .line 490
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 491
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 492
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 493
    iget-object v3, p0, Lorg/osgi/framework/VersionRange;->left:Lorg/osgi/framework/Version;

    invoke-virtual {v3}, Lorg/osgi/framework/Version;->toString0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 494
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 496
    :cond_8
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 497
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 498
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 499
    iget-object v3, p0, Lorg/osgi/framework/VersionRange;->left:Lorg/osgi/framework/Version;

    invoke-virtual {v3}, Lorg/osgi/framework/Version;->toString0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 500
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 502
    :goto_2
    iget-object v3, p0, Lorg/osgi/framework/VersionRange;->right:Lorg/osgi/framework/Version;

    if-eqz v3, :cond_a

    .line 503
    iget-boolean v3, p0, Lorg/osgi/framework/VersionRange;->rightClosed:Z

    if-eqz v3, :cond_9

    .line 504
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 505
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 506
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 507
    iget-object v3, p0, Lorg/osgi/framework/VersionRange;->right:Lorg/osgi/framework/Version;

    invoke-virtual {v3}, Lorg/osgi/framework/Version;->toString0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 508
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 510
    :cond_9
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 511
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 512
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 513
    iget-object v3, p0, Lorg/osgi/framework/VersionRange;->right:Lorg/osgi/framework/Version;

    invoke-virtual {v3}, Lorg/osgi/framework/Version;->toString0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 514
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 517
    :cond_a
    :goto_3
    if-eqz v2, :cond_b

    .line 518
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 521
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 470
    .end local v0    # "result":Ljava/lang/StringBuffer;
    .end local v1    # "needPresence":Z
    .end local v2    # "multipleTerms":Z
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 382
    iget-object v0, p0, Lorg/osgi/framework/VersionRange;->versionRangeString:Ljava/lang/String;

    .line 383
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 384
    return-object v0

    .line 386
    :cond_0
    iget-object v1, p0, Lorg/osgi/framework/VersionRange;->left:Lorg/osgi/framework/Version;

    invoke-virtual {v1}, Lorg/osgi/framework/Version;->toString()Ljava/lang/String;

    move-result-object v1

    .line 387
    .local v1, "leftVersion":Ljava/lang/String;
    iget-object v2, p0, Lorg/osgi/framework/VersionRange;->right:Lorg/osgi/framework/Version;

    if-nez v2, :cond_1

    .line 388
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 389
    .local v2, "result":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lorg/osgi/framework/VersionRange;->left:Lorg/osgi/framework/Version;

    invoke-virtual {v3}, Lorg/osgi/framework/Version;->toString0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 390
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/osgi/framework/VersionRange;->versionRangeString:Ljava/lang/String;

    return-object v3

    .line 392
    .end local v2    # "result":Ljava/lang/StringBuffer;
    :cond_1
    invoke-virtual {v2}, Lorg/osgi/framework/Version;->toString()Ljava/lang/String;

    move-result-object v2

    .line 393
    .local v2, "rightVerion":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x5

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 394
    .local v3, "result":Ljava/lang/StringBuffer;
    iget-boolean v4, p0, Lorg/osgi/framework/VersionRange;->leftClosed:Z

    if-eqz v4, :cond_2

    const/16 v4, 0x5b

    goto :goto_0

    :cond_2
    const/16 v4, 0x28

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 395
    iget-object v4, p0, Lorg/osgi/framework/VersionRange;->left:Lorg/osgi/framework/Version;

    invoke-virtual {v4}, Lorg/osgi/framework/Version;->toString0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 396
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 397
    iget-object v4, p0, Lorg/osgi/framework/VersionRange;->right:Lorg/osgi/framework/Version;

    invoke-virtual {v4}, Lorg/osgi/framework/Version;->toString0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 398
    iget-boolean v4, p0, Lorg/osgi/framework/VersionRange;->rightClosed:Z

    if-eqz v4, :cond_3

    const/16 v4, 0x5d

    goto :goto_1

    :cond_3
    const/16 v4, 0x29

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 399
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/osgi/framework/VersionRange;->versionRangeString:Ljava/lang/String;

    return-object v4
.end method
