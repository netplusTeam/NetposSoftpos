.class synthetic Lorg/jpos/security/jceadapter/JCESecurityModule$1;
.super Ljava/lang/Object;
.source "JCESecurityModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/security/jceadapter/JCESecurityModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$jpos$security$ARPCMethod:[I

.field static final synthetic $SwitchMap$org$jpos$security$KeyScheme:[I

.field static final synthetic $SwitchMap$org$jpos$security$MKDMethod:[I

.field static final synthetic $SwitchMap$org$jpos$security$PaddingMethod:[I

.field static final synthetic $SwitchMap$org$jpos$security$SKDMethod:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1271
    invoke-static {}, Lorg/jpos/security/KeyScheme;->values()[Lorg/jpos/security/KeyScheme;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/jpos/security/jceadapter/JCESecurityModule$1;->$SwitchMap$org$jpos$security$KeyScheme:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lorg/jpos/security/KeyScheme;->Z:Lorg/jpos/security/KeyScheme;

    invoke-virtual {v2}, Lorg/jpos/security/KeyScheme;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lorg/jpos/security/jceadapter/JCESecurityModule$1;->$SwitchMap$org$jpos$security$KeyScheme:[I

    sget-object v3, Lorg/jpos/security/KeyScheme;->U:Lorg/jpos/security/KeyScheme;

    invoke-virtual {v3}, Lorg/jpos/security/KeyScheme;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lorg/jpos/security/jceadapter/JCESecurityModule$1;->$SwitchMap$org$jpos$security$KeyScheme:[I

    sget-object v4, Lorg/jpos/security/KeyScheme;->T:Lorg/jpos/security/KeyScheme;

    invoke-virtual {v4}, Lorg/jpos/security/KeyScheme;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    :goto_2
    :try_start_3
    sget-object v3, Lorg/jpos/security/jceadapter/JCESecurityModule$1;->$SwitchMap$org$jpos$security$KeyScheme:[I

    sget-object v4, Lorg/jpos/security/KeyScheme;->X:Lorg/jpos/security/KeyScheme;

    invoke-virtual {v4}, Lorg/jpos/security/KeyScheme;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v3

    :goto_3
    :try_start_4
    sget-object v3, Lorg/jpos/security/jceadapter/JCESecurityModule$1;->$SwitchMap$org$jpos$security$KeyScheme:[I

    sget-object v4, Lorg/jpos/security/KeyScheme;->Y:Lorg/jpos/security/KeyScheme;

    invoke-virtual {v4}, Lorg/jpos/security/KeyScheme;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v3

    .line 1059
    :goto_4
    invoke-static {}, Lorg/jpos/security/ARPCMethod;->values()[Lorg/jpos/security/ARPCMethod;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lorg/jpos/security/jceadapter/JCESecurityModule$1;->$SwitchMap$org$jpos$security$ARPCMethod:[I

    :try_start_5
    sget-object v4, Lorg/jpos/security/ARPCMethod;->METHOD_1:Lorg/jpos/security/ARPCMethod;

    invoke-virtual {v4}, Lorg/jpos/security/ARPCMethod;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v3

    :goto_5
    :try_start_6
    sget-object v3, Lorg/jpos/security/jceadapter/JCESecurityModule$1;->$SwitchMap$org$jpos$security$ARPCMethod:[I

    sget-object v4, Lorg/jpos/security/ARPCMethod;->METHOD_2:Lorg/jpos/security/ARPCMethod;

    invoke-virtual {v4}, Lorg/jpos/security/ARPCMethod;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v3

    .line 954
    :goto_6
    invoke-static {}, Lorg/jpos/security/SKDMethod;->values()[Lorg/jpos/security/SKDMethod;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lorg/jpos/security/jceadapter/JCESecurityModule$1;->$SwitchMap$org$jpos$security$SKDMethod:[I

    :try_start_7
    sget-object v4, Lorg/jpos/security/SKDMethod;->VSDC:Lorg/jpos/security/SKDMethod;

    invoke-virtual {v4}, Lorg/jpos/security/SKDMethod;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v3

    :goto_7
    :try_start_8
    sget-object v3, Lorg/jpos/security/jceadapter/JCESecurityModule$1;->$SwitchMap$org$jpos$security$SKDMethod:[I

    sget-object v4, Lorg/jpos/security/SKDMethod;->MCHIP:Lorg/jpos/security/SKDMethod;

    invoke-virtual {v4}, Lorg/jpos/security/SKDMethod;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v3

    :goto_8
    :try_start_9
    sget-object v3, Lorg/jpos/security/jceadapter/JCESecurityModule$1;->$SwitchMap$org$jpos$security$SKDMethod:[I

    sget-object v4, Lorg/jpos/security/SKDMethod;->EMV_CSKD:Lorg/jpos/security/SKDMethod;

    invoke-virtual {v4}, Lorg/jpos/security/SKDMethod;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v2

    .line 816
    :goto_9
    invoke-static {}, Lorg/jpos/security/PaddingMethod;->values()[Lorg/jpos/security/PaddingMethod;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lorg/jpos/security/jceadapter/JCESecurityModule$1;->$SwitchMap$org$jpos$security$PaddingMethod:[I

    :try_start_a
    sget-object v3, Lorg/jpos/security/PaddingMethod;->VSDC:Lorg/jpos/security/PaddingMethod;

    invoke-virtual {v3}, Lorg/jpos/security/PaddingMethod;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v2

    :goto_a
    :try_start_b
    sget-object v2, Lorg/jpos/security/jceadapter/JCESecurityModule$1;->$SwitchMap$org$jpos$security$PaddingMethod:[I

    sget-object v3, Lorg/jpos/security/PaddingMethod;->CCD:Lorg/jpos/security/PaddingMethod;

    invoke-virtual {v3}, Lorg/jpos/security/PaddingMethod;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v2

    .line 606
    :goto_b
    invoke-static {}, Lorg/jpos/security/MKDMethod;->values()[Lorg/jpos/security/MKDMethod;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lorg/jpos/security/jceadapter/JCESecurityModule$1;->$SwitchMap$org$jpos$security$MKDMethod:[I

    :try_start_c
    sget-object v3, Lorg/jpos/security/MKDMethod;->OPTION_A:Lorg/jpos/security/MKDMethod;

    invoke-virtual {v3}, Lorg/jpos/security/MKDMethod;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_c

    :catch_c
    move-exception v1

    :goto_c
    :try_start_d
    sget-object v1, Lorg/jpos/security/jceadapter/JCESecurityModule$1;->$SwitchMap$org$jpos$security$MKDMethod:[I

    sget-object v2, Lorg/jpos/security/MKDMethod;->OPTION_B:Lorg/jpos/security/MKDMethod;

    invoke-virtual {v2}, Lorg/jpos/security/MKDMethod;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_d

    :catch_d
    move-exception v0

    :goto_d
    return-void
.end method
