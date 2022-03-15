
%% Simulate the Hodgkin-Huxley neuron spikes
eqns={
  'gNa=120; gK=36; Cm=1'
  'INa(v,m,h) = gNa.*m.^3.*h.*(v-50)' % Inactivating sodium current
  'IK(v,n) = gK.*n.^4.*(v+77)' % Potassium current
  'dv/dt = (10-INa(v,m,h)-IK(v,n))/Cm; v(0)=-65'
  'dm/dt = aM(v).*(1-m)-bM(v).*m; m(0)=.1'
  'dh/dt = aH(v).*(1-h)-bH(v).*h; h(0)=.1'
  'dn/dt = aN(v).*(1-n)-bN(v).*n; n(0)=0'
  'aM(v) = (2.5-.1*(v+65))./(exp(2.5-.1*(v+65))-1)'
  'bM(v) = 4*exp(-(v+65)/18)'
  'aH(v) = .07*exp(-(v+65)/20)'
  'bH(v) = 1./(exp(3-.1*(v+65))+1)'
  'aN(v) = (.1-.01*(v+65))./(exp(1-.1*(v+65))-1)'
  'bN(v) = .125*exp(-(v+65)/80)'
};
data = dsSimulate(eqns);
%% BOLD signals are obtained
spikes = data.time;
canonical_hrf = spm_hrf(2); % You need install spm 12 first to get the hrf function.
BOLD_sim = conv(spikes, canonical_hrf);
%% Get 100 subjects' BOLD signals
sub_bold = [];

for i = 1:100
    snr = 10 % added different portion of white noises
    sim = awgn(BOLD_sim,10,'measured');
    sub_bold = [sub_bold sim];
end
