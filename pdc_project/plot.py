import matplotlib as mpl
import matplotlib.pyplot as plt
import seaborn as sns

# SMALL_SIZE = 8
# MEDIUM_SIZE = 10
# BIGGER_SIZE = 12

# plt.rc('font', size=MEDIUM_SIZE)          # controls default text sizes
# plt.rc('axes', titlesize=MEDIUM_SIZE)     # fontsize of the axes title
# plt.rc('axes', labelsize=MEDIUM_SIZE)    # fontsize of the x and y labels
# plt.rc('xtick', labelsize=SMALL_SIZE)    # fontsize of the tick labels
# plt.rc('ytick', labelsize=SMALL_SIZE)    # fontsize of the tick labels
# plt.rc('legend', fontsize=MEDIUM_SIZE)    # legend fontsize
# plt.rc('figure', titlesize=BIGGER_SIZE)  # fontsize of the figure title

def rcparams():
    mpl.style.use('default')
    plt.style.use(['science', 'nature', 'no-latex'])
    plt.rcParams.update({
        'figure.figsize': (3, 2),
        'xtick.direction': 'out',
        'ytick.direction': 'out',
        'ytick.right': False,
        'xtick.top': False,
        'xtick.minor.visible': False,
        'ytick.minor.visible': False,
        'axes.grid': False,
        'axes.spines.right': False,
        'axes.spines.top': False,
        'font.sans-serif': 'Helvetica',
        'figure.dpi': 300,
    })

    plt.rcParams['figure.facecolor'] = 'white'

sns.lineplot(x=[0,1],y=[0,1])
rcparams()
plt.close()
    
