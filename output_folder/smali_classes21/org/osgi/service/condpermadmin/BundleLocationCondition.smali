.class public Lorg/osgi/service/condpermadmin/BundleLocationCondition;
.super Ljava/lang/Object;
.source "BundleLocationCondition.java"


# static fields
.field private static final CONDITION_TYPE:Ljava/lang/String; = "org.osgi.service.condpermadmin.BundleLocationCondition"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method private static escapeLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "value"    # Ljava/lang/String;

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "escaped":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 101
    .local v1, "inlen":I
    shl-int/lit8 v2, v1, 0x1

    .line 103
    .local v2, "outlen":I
    new-array v3, v2, [C

    .line 104
    .local v3, "output":[C
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 106
    const/4 v5, 0x0

    .line 107
    .local v5, "cursor":I
    move v6, v1

    .local v6, "i":I
    :goto_0
    if-ge v6, v2, :cond_1

    .line 108
    aget-char v7, v3, v6

    .line 109
    .local v7, "c":C
    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    .line 111
    :sswitch_0
    add-int/lit8 v8, v6, 0x1

    if-ge v8, v2, :cond_0

    add-int/lit8 v8, v6, 0x1

    aget-char v8, v3, v8

    const/16 v9, 0x2a

    if-ne v8, v9, :cond_0

    .line 112
    goto :goto_1

    .line 115
    :cond_0
    :sswitch_1
    const/16 v8, 0x5c

    aput-char v8, v3, v5

    .line 116
    add-int/lit8 v5, v5, 0x1

    .line 117
    const/4 v0, 0x1

    .line 121
    :goto_1
    aput-char v7, v3, v5

    .line 122
    nop

    .end local v7    # "c":C
    add-int/lit8 v5, v5, 0x1

    .line 107
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 125
    .end local v6    # "i":I
    :cond_1
    if-eqz v0, :cond_2

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    goto :goto_2

    :cond_2
    move-object v6, p0

    :goto_2
    return-object v6

    nop

    :sswitch_data_0
    .sparse-switch
        0x28 -> :sswitch_1
        0x29 -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method public static getCondition(Lorg/osgi/framework/Bundle;Lorg/osgi/service/condpermadmin/ConditionInfo;)Lorg/osgi/service/condpermadmin/Condition;
    .locals 8
    .param p0, "bundle"    # Lorg/osgi/framework/Bundle;
    .param p1, "info"    # Lorg/osgi/service/condpermadmin/ConditionInfo;

    .line 64
    invoke-virtual {p1}, Lorg/osgi/service/condpermadmin/ConditionInfo;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.osgi.service.condpermadmin.BundleLocationCondition"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 66
    invoke-virtual {p1}, Lorg/osgi/service/condpermadmin/ConditionInfo;->getArgs()[Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "args":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v1, v2, :cond_1

    array-length v1, v0

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal number of args: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_1
    :goto_0
    new-instance v1, Lorg/osgi/service/condpermadmin/BundleLocationCondition$1;

    invoke-direct {v1, p0}, Lorg/osgi/service/condpermadmin/BundleLocationCondition$1;-><init>(Lorg/osgi/framework/Bundle;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 74
    .local v1, "bundleLocation":Ljava/lang/String;
    const/4 v4, 0x0

    .line 76
    .local v4, "filter":Lorg/osgi/framework/Filter;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(location="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v7, v0, v6

    invoke-static {v7}, Lorg/osgi/service/condpermadmin/BundleLocationCondition;->escapeLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/osgi/framework/FrameworkUtil;->createFilter(Ljava/lang/String;)Lorg/osgi/framework/Filter;

    move-result-object v5
    :try_end_0
    .catch Lorg/osgi/framework/InvalidSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    .line 80
    nop

    .line 81
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5, v3}, Ljava/util/Hashtable;-><init>(I)V

    .line 82
    .local v5, "matchProps":Ljava/util/Dictionary;, "Ljava/util/Dictionary<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "location"

    invoke-virtual {v5, v7, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    array-length v7, v0

    if-ne v7, v3, :cond_2

    aget-object v2, v0, v2

    const-string v3, "!"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    :cond_2
    move v2, v6

    .line 84
    .local v2, "negate":Z
    invoke-interface {v4, v5}, Lorg/osgi/framework/Filter;->match(Ljava/util/Dictionary;)Z

    move-result v3

    xor-int/2addr v3, v2

    if-eqz v3, :cond_3

    sget-object v3, Lorg/osgi/service/condpermadmin/Condition;->TRUE:Lorg/osgi/service/condpermadmin/Condition;

    goto :goto_1

    :cond_3
    sget-object v3, Lorg/osgi/service/condpermadmin/Condition;->FALSE:Lorg/osgi/service/condpermadmin/Condition;

    :goto_1
    return-object v3

    .line 77
    .end local v2    # "negate":Z
    .end local v5    # "matchProps":Ljava/util/Dictionary;, "Ljava/util/Dictionary<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 79
    .local v2, "e":Lorg/osgi/framework/InvalidSyntaxException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid filter: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lorg/osgi/framework/InvalidSyntaxException;->getFilter()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 65
    .end local v0    # "args":[Ljava/lang/String;
    .end local v1    # "bundleLocation":Ljava/lang/String;
    .end local v2    # "e":Lorg/osgi/framework/InvalidSyntaxException;
    .end local v4    # "filter":Lorg/osgi/framework/Filter;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ConditionInfo must be of type \"org.osgi.service.condpermadmin.BundleLocationCondition\""

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
